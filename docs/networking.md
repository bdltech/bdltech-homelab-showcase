# Network Design

This page documents the public, sanitized BDLTech network design.

## Goals

The network is designed around:

- segmentation
- centralized DNS filtering
- manageable service access
- high-speed local storage/media traffic
- clear separation of trusted and less-trusted devices
- room for future automation

## Logical Segmentation

| Segment | Purpose |
|---|---|
| Main | Trusted user devices |
| IoT | Smart-home and embedded devices |
| Media | Streaming and entertainment devices |
| Homelab Servers | Infrastructure and self-hosted services |
| Kids | Child devices and policy-specific access |

Exact VLAN IDs and internal subnets are intentionally omitted from this public repository.

## Core Components

- UniFi Fiber Gateway
- managed switching with multi-gigabit / 10G capability
- GL.iNet Flint 2 used as a wireless access point
- AdGuard Home for centralized DNS filtering
- TrueNAS SCALE for shared storage
- Proxmox VE for compute
- Tailscale for authenticated remote access

## DNS Design

AdGuard Home provides filtered DNS resolution for the network.

Internal service naming is kept private in the operational repository. Public documentation uses generic service names instead.

## Wireless Design

The wireless layer is designed to support assigning devices to the appropriate network segment without requiring a separate SSID for every device class.

## Traffic Philosophy

The design aims for explicit, understandable flows:

- clients use the approved DNS path
- server networks are isolated from untrusted device classes
- remote access enters through Tailscale rather than public management ports
- storage-heavy services stay on fast local links
- exceptions are documented instead of becoming permanent mystery rules

## Troubleshooting Order

For a connectivity problem:

1. verify client addressing
2. verify gateway reachability
3. verify DNS separately
4. verify VLAN placement
5. verify firewall policy
6. verify return path
7. inspect packet flow only after the basics are confirmed

## Public / Private Boundary

The public showcase omits live subnets, exact VLAN IDs, firewall exports, internal DNS names, device MAC addresses, and WAN addressing.

---

[Back to the showcase README](../README.md)
