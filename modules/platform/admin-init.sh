#!/usr/bin/env bash

checkParameter

cd "/var/www/html/${SHOPWARE_PROJECT}" || exit 1

if [[ -e vendor/shopware/platform ]]; then
  npm --prefix vendor/shopware/platform/src/Administration/Resources/app/administration/ clean-install
else
  npm --prefix vendor/shopware/administration/Resources/app/administration/ clean-install
fi
