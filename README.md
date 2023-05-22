# CF Custom SSL Autoupdate
This is the automation script to update a custom SSL on Cloudflare. On the other hand, it could be used to change a certificate from several lines to a single line.

## How to use it?
Put this script together with private key and public key, then run it. You can run it manually or via crontab.

## How to get zone_id
You can find out here: https://developers.cloudflare.com/fundamentals/get-started/basic-tasks/find-account-and-zone-ids/

## How to get cert_pack_uuid
You can find out in here: https://developers.cloudflare.com/api/operations/ssl-verification-ssl-verification-details
