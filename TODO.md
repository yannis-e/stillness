## Phase 1: Foundation
- [X] Define architecture and module boundaries.
- [ ] Set up Nix flake, package, and development shell.
- [ ] Implement CLI and configuration validation.
- [ ] Write basic documentation.

## Phase 2: Session Management
- [ ] Start, inspect, and stop focus sessions.
- [ ] Track session state and absolute expiration times.
- [ ] Persist sessions across restarts and reboots.
- [ ] Implement reliable expiration and recovery.

## Phase 3: Blocking
- [ ] Implement configurable DNS blacklists.
- [ ] Implement full network blocking and allowlists.
- [ ] Add application blocking.
- [ ] Safely apply and restore system restrictions.

## Phase 4: Scheduling and Lockout
- [ ] Add scheduled and recurring sessions using systemd timers.
- [ ] Implement optional desktop lockout.
- [ ] Add optional hibernation with session recovery.
- [ ] Handle missed schedules and interrupted sessions.

## Phase 5: Reliability and Security
- [ ] Separate the CLI from privileged enforcement.
- [ ] Minimize permissions and validate privileged requests.
- [ ] Improve tamper resistance.
- [ ] Document security limitations and bypasses.
- [ ] Prevent accidental or indefinite lockouts.

## Phase 6: Testing and Release
- [ ] Test expiration, restarts, reboots, and hibernation.
- [ ] Test DNS, network, and application restrictions.
- [ ] Add NixOS VM integration tests.
- [ ] Document installation, configuration, and usage.
- [ ] Add a license and CI checks.
- [ ] Publish the first stable release.

## MVP
- [ ] Nix package and NixOS module.
- [ ] CLI for timed focus sessions.
- [ ] DNS and network blocking.
- [ ] Persistent systemd enforcement.
- [ ] Reliable expiration and reboot recovery.
- [ ] Automated tests for core functionality.
