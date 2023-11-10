---
title: "Project github-slug-action | Release 3.3.0"
date: 2021-01-25T22:20:48Z
toc: false
description: 
draft: false
tags:
- opensoure
- github
- release
---
## [3.3.0](http://github.com/rlespinasse/github-slug-action/compare/3.2.0...3.3.0) (2021-01-25)


### Bug Fixes

* support pull-request for slug and slug url ([78985f8](http://github.com/rlespinasse/github-slug-action/commit/78985f84eca97ef1c5262e85e8a73a277494c4ed))


**Caution**: From v3.0.0 to v3.2.0 included, `GITHUB_REF_SLUG` have the wrong value on `pull_request` event.
`refs/pull/42-merge` become `refs-pull-42-merge` instead of `42-merge` (See #58)


### Features

* support partial GITHUB_REPOSITORY ([75ce03b](http://github.com/rlespinasse/github-slug-action/commit/75ce03b6a055a3be9d936a3a99c51038bd72298c))



