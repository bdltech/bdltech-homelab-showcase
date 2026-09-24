# Security and Sanitization

This repository is public.

## Never commit

- passwords
- API keys or access tokens
- OAuth credentials
- private SSH keys
- session cookies
- production `.env` files
- private IP inventories
- private hostnames or internal DNS records
- backup encryption keys
- secrets embedded in screenshots
- raw configuration exports containing credentials

## Public documentation rule

Examples should describe architecture and workflow without exposing live infrastructure details.

Use placeholders where a concrete value is useful:

```text
<PROXMOX_HOST>
<INTERNAL_DNS>
<TRUENAS_HOST>
<API_TOKEN>
```

## Screenshots

Before committing a screenshot, inspect it for:

- IP addresses
- hostnames
- usernames
- email addresses
- tokens
- browser profile information
- QR codes
- API keys
- command history
- notification content

Crop or redact anything that is not necessary to explain the project.

## Private source of truth

Operational configuration and recovery data belong in the private homelab repository, not here.
