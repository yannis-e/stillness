# stillness

A NixOS package for a distraction-free computing environment.

**stillness** helps you stay focused by restricting access to distracting websites, network connections, and applications for a defined period of time.

## Features

- **DNS-level blocking** — Block distracting domains using configurable blacklists.
- **Network isolation** — Block network access entirely or restrict connectivity to explicitly allowed destinations.
- **Application blocking** — Prevent selected applications from running during focus sessions.
- **Desktop lockout** — End the active desktop session and hibernate the system to disk, preserving open work without allowing normal desktop use during the focus period.
- **Scheduled sessions** — Automatically activate focus restrictions according to a configurable schedule.
- **Tamper resistance** — Enforce restrictions through system-level services to make casual bypassing more difficult.
- **Automatic recovery** — Restore normal access when a session expires, including after suspension, hibernation, or reboot.

## Design Principles

- **NixOS-native** — Declarative configuration, reproducible builds, and systemd integration.
- **Minimal interface** — A straightforward CLI without a graphical frontend.
- **Time-limited by design** — Every focus session has a defined duration and expiration time.
- **Local-first** — No accounts, cloud services, or telemetry required.
- **Safe by default** — Explicit configuration, reversible restrictions, and safeguards against accidental lockout.

## Security Model

stillness is designed to make distractions harder to access, not to provide an absolute security boundary. A user with sufficient administrative access may be able to disable or circumvent its restrictions.

Focus sessions should use persistent, system-level enforcement where necessary and recover predictably after interruptions or unexpected shutdowns.