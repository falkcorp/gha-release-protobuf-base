<!-- file: .github/copilot-instructions.md -->
<!-- version: 2.4.0 -->
<!-- guid: 4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a -->
<!-- last-edited: 2026-06-13 -->

# gha-release-protobuf-base — Additional Context

Org-wide coding standards (file headers, language rules, commit format) are at
**<https://github.com/falkcorp/.github>** and apply automatically to this repo.

For full project context: **CLAUDE.md** at the repo root.

## Project overview

GHA composite action: Protocol Buffer base release and SDK generation. Language: Shell/YAML.

## Critical constraints

- This is a GHA composite action consumed by other repositories — breaking changes
  must be communicated via a new major version tag.
- All commits MUST use conventional commit format: `type(scope): description`.
- Pin all GitHub Action references to SHAs, not tags.
