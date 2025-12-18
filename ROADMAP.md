# asdf-control-tower Roadmap

## Overview

This repository provides centralized SCM (Source Control Management) mirroring infrastructure for hyperpolymath asdf plugins. The hub-and-spoke model allows repositories to mirror to multiple Git hosting platforms (GitLab, Codeberg, Bitbucket) from a single GitHub source.

---

## Current State (v1.0)

### Completed
- [x] Hub-and-spoke mirror workflow to GitLab, Codeberg, Bitbucket
- [x] Conditional mirroring via repository variables
- [x] Pinned action versions (SHA) for supply chain security
- [x] Minimal permissions (`read-all`)
- [x] SSH key authentication via secrets

### Security Hardening (v1.1) - Just Completed
- [x] SSH known hosts verification (prevents MITM attacks)
- [x] `persist-credentials: false` (prevents credential leakage)
- [x] Job timeouts (prevents runaway workflows)
- [x] Concurrency controls (prevents race conditions)
- [x] Improved error handling for remote configuration
- [x] Success confirmation messages

---

## Near-Term Roadmap

### Phase 1: Robustness Improvements
- [ ] Add retry logic for transient network failures
- [ ] Add workflow status badges for README
- [ ] Add scheduled mirror runs (cron) as fallback for missed pushes
- [ ] Add mirror verification step (compare remote refs)

### Phase 2: Observability
- [ ] Add Slack/Discord notifications on mirror failure
- [ ] Add workflow run summary annotations
- [ ] Create centralized dashboard for mirror status across repos

### Phase 3: Expanded Platform Support
- [ ] Add Gitea/Forgejo support
- [ ] Add SourceHut support
- [ ] Add Azure DevOps support
- [ ] Add self-hosted Git server support

---

## Long-Term Roadmap

### Phase 4: Advanced Features
- [ ] Selective branch mirroring (configurable per-repo)
- [ ] Tag-only mirroring option
- [ ] Mirror delay/scheduling options
- [ ] Support for LFS mirroring
- [ ] Dry-run mode for testing

### Phase 5: Multi-Repo Management
- [ ] Matrix-based workflow for managing multiple repos from control-tower
- [ ] Centralized configuration file for all mirrors
- [ ] Automated mirror setup script for new repos
- [ ] Sync status reporting across all managed repositories

### Phase 6: Security Enhancements
- [ ] SSH key rotation automation
- [ ] Audit logging for all mirror operations
- [ ] GPG signature verification on pushes
- [ ] OIDC authentication (keyless) where supported

---

## Configuration Requirements

To enable mirroring for a repository, set these in the repository settings:

**Variables** (Settings > Secrets and variables > Actions > Variables):
- `GITLAB_MIRROR_ENABLED` = `true`
- `CODEBERG_MIRROR_ENABLED` = `true`
- `BITBUCKET_MIRROR_ENABLED` = `true`

**Secrets** (Settings > Secrets and variables > Actions > Secrets):
- `GITLAB_SSH_KEY` - Private SSH key for GitLab
- `CODEBERG_SSH_KEY` - Private SSH key for Codeberg
- `BITBUCKET_SSH_KEY` - Private SSH key for Bitbucket

---

## Contributing

1. Fork the repository
2. Create a feature branch
3. Submit a pull request with clear description

---

## License

AGPL-3.0-or-later
