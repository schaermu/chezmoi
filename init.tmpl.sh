#!/usr/bin/env bash

# make sure bitwarden is logged in and unlocked
if ! bw status | grep -q "unlocked"; then
  echo "Bitwarden is not unlocked. Please unlock it first."
  exit 1
fi

# import gpg key from bitwarden
echo -e {{ bitwardenAttachment .bw_gpg_private_key_filename (bitwarden "item" .bw_chezmoi_item_name).id | quote }} > ./{{- .bw_gpg_private_key_filename }}
gpg --import --passphrase {{ (bitwardenFields "item" (bitwarden "item" .bw_chezmoi_item_name).id).gpg_passphrase.value | quote }} --pinentry-mode=loopback ./{{- .bw_gpg_private_key_filename }}
rm -f ./{{- .bw_gpg_private_key_filename -}}

bw lock