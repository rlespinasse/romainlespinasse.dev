---
title: "2021 Changelog: All Releases and Updates for 'rlespinasse/github-slug-action'"
summary: Changelog of the 8 releases for 2021
date: 2021-01-12T09:23:23Z
lastmod: 2021-09-15T15:01:27Z
toc: false
draft: false
tags:
- opensource
- github
- release
- 2021-changelog
---
## [3.6.0](http://github.com/rlespinasse/github-slug-action/compare/3.5.1...3.6.0) (2021-09-15)


### Features

* add GITHUB_REF_NAME env var ([12a7510](http://github.com/rlespinasse/github-slug-action/commit/12a75106304d45442301df66d3ba38e1ac002649))



## [2.2.0](http://github.com/rlespinasse/github-slug-action/compare/2.1.1...2.2.0) (2021-04-05)


### Features

* add version warning ([f536765](http://github.com/rlespinasse/github-slug-action/commit/f536765da448783f587c88e2c69f8f65b4e06541))



## [1.2.0](http://github.com/rlespinasse/github-slug-action/compare/1.1.1...1.2.0) (2021-04-05)


### Features

* add deprecation warning ([c9eec68](http://github.com/rlespinasse/github-slug-action/commit/c9eec68e1a02f91b77e9b978ad23527085244aaa))



### [3.5.1](http://github.com/rlespinasse/github-slug-action/compare/3.5.0...3.5.1) (2021-03-31)


### Bug Fixes

* update dist files ([e6c550f](http://github.com/rlespinasse/github-slug-action/commit/e6c550f88ccca52a82675b89186b6b72864f087c))



## [3.5.0](http://github.com/rlespinasse/github-slug-action/compare/3.4.0...3.5.0) (2021-03-30)

### WARNING

This release should not be used due to #65


### Features

* allow underscore in slug values ([475d293](http://github.com/rlespinasse/github-slug-action/commit/475d293680b998a3315846828329f05bfff4ac9c))



## [3.4.0](http://github.com/rlespinasse/github-slug-action/compare/3.3.0...3.4.0) (2021-03-02)


### Features

* add _CS suffix to keep value case-sensitive ([6c93fcb](http://github.com/rlespinasse/github-slug-action/commit/6c93fcbf53da9c6415bd7f5e37579b488f34339e))



## [3.3.0](http://github.com/rlespinasse/github-slug-action/compare/3.2.0...3.3.0) (2021-01-25)


### Bug Fixes

* support pull-request for slug and slug url ([78985f8](http://github.com/rlespinasse/github-slug-action/commit/78985f84eca97ef1c5262e85e8a73a277494c4ed))


**Caution**: From v3.0.0 to v3.2.0 included, `GITHUB_REF_SLUG` have the wrong value on `pull_request` event.
`refs/pull/42-merge` become `refs-pull-42-merge` instead of `42-merge` (See #58)


### Features

* support partial GITHUB_REPOSITORY ([75ce03b](http://github.com/rlespinasse/github-slug-action/commit/75ce03b6a055a3be9d936a3a99c51038bd72298c))



## [3.2.0](http://github.com/rlespinasse/github-slug-action/compare/3.1.0...3.2.0) (2021-01-12)


### Features

* expose GITHUB_EVENT_PULL_REQUEST_HEAD_SHA_SHORT ([5b9fe60](http://github.com/rlespinasse/github-slug-action/commit/5b9fe6015d2facc71c81d53bf3b08f04e0f3f743))



