# Contributing

This repository is a **public, sanitized showcase** of the BDLTech homelab.

## Before committing

1. Run the public-safety check:

```bash
bash scripts/check-public-safety.sh
```

2. Review screenshots for private addresses, hostnames, usernames, emails, tokens, QR codes, session information, and browser profile details.
3. Use placeholders instead of real infrastructure values.
4. Keep operational recovery material and live configuration in the private source-of-truth repository.
5. Update the relevant documentation when a showcased project changes.

## Good public content

- architecture concepts
- sanitized diagrams
- screenshots with sensitive details removed
- high-level service descriptions
- lessons learned
- generic configuration patterns
- recovery philosophy

## Keep private

- live IP inventories
- credentials and tokens
- internal DNS records
- firewall exports
- private SSH material
- production environment files
- detailed incident artifacts that expose the environment
