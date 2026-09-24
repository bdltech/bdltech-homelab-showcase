# Screenshot Guide

Screenshots in this directory should be sanitized before they are committed.

Good candidates include:

- Proxmox dashboard views with sensitive identifiers removed
- JARVIS HUD screenshots
- Jellyfin dashboard or playback/transcode examples
- RomM / EmulatorJS interface examples
- UniFi topology views with private addressing hidden
- documentation or recovery workflow examples

Before committing an image, verify that it does not expose credentials, private addresses, private hostnames, email addresses, browser sessions, or API tokens.

Suggested naming:

```text
proxmox-overview.png
jarvis-hud.png
jellyfin-dashboard.png
romm-library.png
network-topology.png
```
