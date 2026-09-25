# Projects

## Hermes Agent Appliance

A dedicated Debian VM runs Hermes Agent as an operator-assistance platform.

Highlights:

- custom JARVIS-inspired dashboard
- read-only Proxmox status integration
- external Jellyfin health checks
- web, browser, and search tooling
- recovery scripts for custom dashboard and helper restoration
- separation between configuration and secrets

The goal is to make AI-assisted operations useful without granting unnecessary infrastructure control.

[Full build guide](hermes-jarvis.md)

## Jellyfin Media Server

Jellyfin runs in its own VM with GPU passthrough for hardware-accelerated transcoding.

Highlights:

- dedicated NVIDIA GPU
- isolated VM deployment
- dedicated transcode/cache storage
- network-backed media library
- external health monitoring

[Full build guide](jellyfin.md)

## RomM + EmulatorJS

RomM manages game libraries while EmulatorJS provides browser-based emulation.

Highlights:

- virtualized deployment
- network-mounted ROM storage
- browser playback
- separation between application state and large content libraries

[Full build guide](romm-emulatorjs.md)

## Proxmox Read-only Monitoring

A small helper interface exposes common operational checks while preserving least privilege.

Typical data includes:

- node status
- VM and container state
- storage state
- recent errors
- backup job visibility
- summary and health views

No write actions are required for routine monitoring.

## netboot.xyz

A dedicated network-boot service provides PXE/iPXE workflows for imaging, recovery, and installation tasks.

[Full deployment guide](netboot.md)

## Tailscale Remote Access

Tailscale provides remote access to selected internal services and can support subnet-routing or exit-node use cases without exposing management interfaces directly.

[Full remote-access guide](tailscale.md)

## Network and DNS

The network design uses segmentation and centralized DNS filtering to keep client classes separate while preserving manageable access to shared services.

[Network design](networking.md)

## Documentation and Recovery

The private repository tracks:

- system inventory
- network and service maps
- recovery procedures
- configuration examples
- helper scripts
- repository validation
- maintenance notes

This public showcase intentionally keeps only sanitized, non-sensitive material.

[Recovery philosophy](recovery-philosophy.md)
