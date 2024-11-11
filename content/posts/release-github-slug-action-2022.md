---
title: "2022 Changelog: All Releases and Updates for 'rlespinasse/github-slug-action'"
summary: Changelog of the 16 releases for 2022
date: 2022-01-01T14:08:11Z
lastmod: 2022-10-31T18:59:57Z
showToC: false
draft: false
tags:
- opensource
- github
categories:
- Changelog posts
---
## [4.4.0](https://github.com/rlespinasse/github-slug-action/compare/v4.3.2...v4.4.0) (2022-10-31)


### Features

* support GHES step output management ([a362e5f](https://github.com/rlespinasse/github-slug-action/commit/a362e5fb42057a3a23a62218b050838f1bacca5d))



## [4.3.2](https://github.com/rlespinasse/github-slug-action/compare/v4.3.1...v4.3.2) (2022-10-17)


### Bug Fixes

* update dependencies to remove internal warnings ([b011e83](https://github.com/rlespinasse/github-slug-action/commit/b011e83cf8cb29e22dda828db30586691ae164e4))



## [4.3.1](https://github.com/rlespinasse/github-slug-action/compare/v4.3.0...v4.3.1) (2022-10-15)


### Bug Fixes

* use environment file to manage outputs ([00198f8](https://github.com/rlespinasse/github-slug-action/commit/00198f89920d4454e37e4b27af2b7a8eba79c530))



## [3.7.1](https://github.com/rlespinasse/github-slug-action/compare/v3.7.0...v3.7.1) (2022-10-15)


### Bug Fixes

* use environment file to manage outputs ([dedf4ac](https://github.com/rlespinasse/github-slug-action/commit/dedf4ac5bbb50aeb6992c8323d2862843079f1b4))



## [4.3.0](https://github.com/rlespinasse/github-slug-action/compare/v4.2.5...v4.3.0) (2022-10-02)


### Features

* generate proper git tag ([9c3571f](https://github.com/rlespinasse/github-slug-action/commit/9c3571fd3dba541bfdaebc001482a49a1c1f136a))



## [3.7.0](https://github.com/rlespinasse/github-slug-action/compare/v3.6.1...v3.7.0) (2022-10-02)


### Features

* generate proper git tag ([68babf6](https://github.com/rlespinasse/github-slug-action/commit/68babf69b34f4c4b556ea350616c5408d627937e))



## [3.6.1](https://github.com/rlespinasse/github-slug-action/compare/3.6.0...3.6.1) (2022-08-22)


### Bug Fixes

* remove trailing hyphens if any after cut ([19f9c84](https://github.com/rlespinasse/github-slug-action/commit/19f9c84ac61b17071a3cfc4ae984ac0e2ba1cdae))



## [4.2.5](https://github.com/rlespinasse/github-slug-action/compare/4.2.4...4.2.5) (2022-06-16)


### Bug Fixes

* remove trailing hyphens if any after cut ([0141d9b](https://github.com/rlespinasse/github-slug-action/commit/0141d9b38d1f21c3b3de63229e20b7b0ad7ef0f4))



## [4.2.4](https://github.com/rlespinasse/github-slug-action/compare/4.2.3...4.2.4) (2022-04-16)


### Bug Fixes

* **GITHUB_REF_NAME:** correctly fill the variable on pull request events ([2c5a627](https://github.com/rlespinasse/github-slug-action/commit/2c5a6278614844fde520a26c2b4d2f0ff93211bb))



## [4.2.3](https://github.com/rlespinasse/github-slug-action/compare/4.2.2...4.2.3) (2022-04-08)


### Bug Fixes

* preserve dash groups ([1615fcb](https://github.com/rlespinasse/github-slug-action/commit/1615fcb48b5315152b3733b7bed1a9f5dfada6e3))
* remove underscore from URL-compliant slugs ([812bd42](https://github.com/rlespinasse/github-slug-action/commit/812bd42f949c47e86a2d7402403fbaf32a2f8abb))



## [4.2.2](https://github.com/rlespinasse/github-slug-action/compare/4.2.1...4.2.2) (2022-03-24)


### Bug Fixes

* do not replace group of dashes with a single dash ([ad808ea](https://github.com/rlespinasse/github-slug-action/commit/ad808ea8b29ef8666287403953bec2f1607dfb97))



## [4.2.1](https://github.com/rlespinasse/github-slug-action/compare/4.2.0...4.2.1) (2022-03-22)


### Bug Fixes

* set short-length automatically when no checkout ([7a3b4c1](https://github.com/rlespinasse/github-slug-action/commit/7a3b4c1766ad8e6d23ab37d33417392509ff84e2))



## [4.2.0](https://github.com/rlespinasse/github-slug-action/compare/4.1.0...4.2.0) (2022-03-21)


### Features

* add option to set a different short length than git defaults ([dbbe21b](https://github.com/rlespinasse/github-slug-action/commit/dbbe21b72b96929fe6e67275c332f43599b31274))



## [4.1.0](https://github.com/rlespinasse/github-slug-action/compare/4.0.1...4.1.0) (2022-03-19)


### Features

* add option to set a different slug length than 63 ([88f3ee8](https://github.com/rlespinasse/github-slug-action/commit/88f3ee8f6f5d1955de92f1fe2fdb301fd40207c6))



## [4.0.1](https://github.com/rlespinasse/github-slug-action/compare/4.0.0...4.0.1) (2022-03-19)


### Bug Fixes

* **short:** populate GITHUB_SHA_SHORT correctly ([cd9871b](https://github.com/rlespinasse/github-slug-action/commit/cd9871b66e11e9562e3f72469772fe100be4c95a))



## [4.0.0](https://github.com/rlespinasse/github-slug-action/compare/3.6.0...4.0.0) (2022-01-01)


### Features

* support prefix on exported variables ([e917203](https://github.com/rlespinasse/github-slug-action/commit/e91720375fabdc429de28c07771ae4c5c45bf474))
* use composite action instead of node ([4405613](https://github.com/rlespinasse/github-slug-action/commit/4405613430a36050b4b8f92bc56482ca7ad87417))


### BREAKING CHANGES

* use different backend for the action



