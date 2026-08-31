# CyrenX — Project notes

## Purpose

Give prospective clients and hiring teams a concise, inspectable interface sample while keeping production implementation private. Product discovery is supported by the README; downloadable app releases are separate from source-code publishing.

## Scope

CyrenX is described in the private repository as an interactive wellness app. This public SwiftUI sample is a new layout concept, not a claim that these exact screens or features are shipping in the private app.

## Technical choices

- One self-contained SwiftUI source file for easy review and integration into a new Xcode project.
- Reusable card/page composition instead of duplicated screens.
- Local state for preview interactions; nothing is persisted or transmitted.
- System text styles and semantic colours support Dynamic Type and system appearance. Device accessibility testing remains pending.
- No third-party dependencies or production endpoints.

## Verification

- Swift parser checks passed for the sample source. This checks syntax, not a complete build.
- Publication file allowlist, SVG parsing, and common secret-pattern checks passed.
- No Simulator or device build has been verified. Do not treat this sample as release-ready.
- No live integrations are included or tested.

## Release checklist

- [ ] Build in Xcode and test tabs, card sheets, large text, dark mode, and VoiceOver.
- [ ] Add screenshots captured from the running sample, labelled as sample UI.
- [x] Add developer-provided App Store and official website links.
- [ ] Add an approved business contact for freelance and hiring enquiries.
- [ ] Keep all future commits free of production services, credentials, and personal data.

## Developer-supplied app presentation

`app-showcase.png` is the CyrenX montage supplied for public portfolio use. It represents the broader app interface, not the standalone sample code. The image does not verify shipping status or live integration behaviour.

## Download information

Official website: https://cyrenx.com/

App Store: https://apps.apple.com/us/app/cyrenx-manifest-become/id6799670474

The developer supplied these links and the three-day free-trial offer. The README directs visitors to the app or App Store for current trial eligibility and subscription terms; those terms were not independently retrievable during this update.
