# platform-ui

iOS distribution repo for the BKN301 platform — **no source code**.

Contains only:

- `Package.swift` — SPM manifest with `binaryTarget` URLs + checksums
- GitHub Release assets — `*.xcframework.zip` per iOS UI package

## Consumption (FD / mother app)

In Xcode: **File → Add Package Dependencies** →  
`https://github.com/dhruvgovani-bkn301/platform-ui` → pin version tag (e.g. `0.1.0-SNAPSHOT`).

Requires GitHub credentials with read access to this repo (collaborator + PAT).

## Publishing

Triggered from `platform-kmp` CI: builds Swift XCFrameworks, uploads assets here, updates `Package.swift` checksums.
