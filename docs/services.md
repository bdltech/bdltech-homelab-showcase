# Service Catalog

This catalog gives a public, sanitized summary of the major services represented in the BDLTech homelab.

| Service | Role | Hosting model |
|---|---|---|
| Proxmox VE | Virtualization and workload management | Bare-metal hypervisor |
| Docker / Compose | Application containers | Virtualized Docker hosts |
| UniFi | Gateway, switching, wireless, segmentation | Network infrastructure |
| AdGuard Home | DNS filtering | Dedicated service |
| TrueNAS SCALE | Shared storage | Storage server |
| Jellyfin | Media streaming | Dedicated VM with GPU acceleration |
| RomM | ROM library management | Dedicated VM/service |
| EmulatorJS | Browser-based emulation | Integrated with RomM |
| AMP | Game server management | Dedicated VM |
| netboot.xyz | PXE/iPXE deployment and recovery | Dedicated service |
| Tailscale | Authenticated remote access | Dedicated routing endpoint |
| Hermes Agent | AI-assisted operations and monitoring | Dedicated VM |

## Visibility model

The public showcase describes what each component does and how the pieces relate. Exact addressing, credentials, internal DNS names, firewall exports, and recovery secrets are intentionally excluded.
