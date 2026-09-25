# Recovery Philosophy

The BDLTech homelab is documented with the assumption that individual systems may eventually need to be rebuilt.

The goal is not to preserve every running byte forever. The goal is to preserve enough **intent, configuration, documentation, and data** to recreate the working service.

## Recovery Layers

### 1. Infrastructure definition

Record what the service needs:

- operating system
- compute resources
- storage layout
- network role
- hardware passthrough
- dependencies

### 2. Reusable configuration

Track non-sensitive:

- scripts
- compose files
- helper tools
- UI customizations
- service configuration examples

### 3. Secrets

Keep credentials separate from Git.

Recovery documentation should say **where a secret belongs**, not publish the secret itself.

### 4. Persistent data

Identify the data that must be backed up separately from configuration.

Examples include databases, application state, media metadata, and user-generated content.

### 5. Validation

Every recovery procedure should end with concrete checks.

A system is not recovered merely because it boots.

## Preferred Recovery Pattern

1. rebuild the base operating system
2. install required packages
3. restore storage mounts
4. restore application configuration
5. restore persistent data
6. restore hardware integration
7. restore customizations
8. start services
9. validate externally
10. document any drift from the previous build

## Why this matters

A homelab becomes much easier to maintain when recovery is treated as part of the design rather than an emergency-only activity.

---

[Back to the showcase README](../README.md)
