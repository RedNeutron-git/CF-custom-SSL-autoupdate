#!/bin/bash
AWK_KEY=$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' /tmp/certSSL/ssl_private_key.key)
AWK_CRT=$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' /tmp/certSSL/ssl_public_key.crt)
generate_post_data()
{
    cat <<EOF
        {
            "private_key":"$AWK_KEY",
            "certificate":"$AWK_CRT",
            "bundle_method":"force"
        }
    EOF
}

curl -X PATCH "https://api.cloudflare.com/client/v4/zones/[zone_ID]/custom_certificates/[cert_pack_uuid]" \
-H "X-Auth-Email: example.demo@gmail.com" \
-H "X-Auth-Key: [auth-key]" \
-H "Content-Type: application/json" \
--data "$(generate_post_data)"
