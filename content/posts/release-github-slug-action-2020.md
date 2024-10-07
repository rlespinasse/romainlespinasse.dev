---
title: "2020 Changelog: All Releases and Updates for 'rlespinasse/github-slug-action'"
summary: Changelog of the 6 releases for 2020
date: 2020-04-26T00:15:42Z
lastmod: 2020-11-01T19:40:34Z
toc: false
draft: false
tags:
- opensource
- github
categories:
- Changelog posts
---
## [3.1.0](http://github.com/rlespinasse/github-slug-action/compare/3.0.0...3.1.0) (2020-11-01)


### Features

* **action:** improve marketplace information ([3cddc4f](http://github.com/rlespinasse/github-slug-action/commit/3cddc4f12d7a6fdbb8b1221dc02a2c64670e54bf))



## [3.0.0](http://github.com/rlespinasse/github-slug-action/compare/2.1.0...3.0.0) (2020-10-26)


### Bug Fixes

* upgrade actions core due to CVE fix ([d0549c1](http://github.com/rlespinasse/github-slug-action/commit/d0549c1f85ab9567b439f9d660b01ce1142b9fbe))


### Features

* add support for windows and macos jobs ([13c2f38](http://github.com/rlespinasse/github-slug-action/commit/13c2f38dad5f32529f37c25736412b1e4cf687fe))


### BREAKING CHANGES

* The action implementation move from container action to node.js action

Co-authored-by: Romain Lespinasse <romain.lespinasse@gmail.com>



## [1.1.1](http://github.com/rlespinasse/github-slug-action/compare/1.1.0...1.1.1) (2020-10-07)


### Bug Fixes

* remove set-env due to CVE fix ([6c69465](http://github.com/rlespinasse/github-slug-action/commit/6c69465e62a6430b5742c5bc0fce732f55630ee7))



## [2.1.0](http://github.com/rlespinasse/github-slug-action/compare/2.0.0...2.1.0) (2020-07-28)


### Features

* expose slug variables for github.event.ref ([5a334a8](http://github.com/rlespinasse/github-slug-action/commit/5a334a8573fc27451af5b2a6ee175d8e11579e10))



## [2.0.0](http://github.com/rlespinasse/github-slug-action/compare/1.1.0...2.0.0) (2020-04-26)


### Features

* **slug:** expose GITHUB_REPOSITORY slugs ([ca9a67f](http://github.com/rlespinasse/github-slug-action/commit/ca9a67fa1f1126b377a9d80dc1ea354284c71d21))
* **slug:** keep period in slug variable ([e95fe45](http://github.com/rlespinasse/github-slug-action/commit/e95fe45d8b382665f2f82ffe17541c705f1adc05))


### BREAKING CHANGES

* **slug:** The previous slug function is rename slug_url
to be able to still use itin the subdomain of an url.

Co-authored-by: Marc Schiller <m4rc.schiller@gmail.com>



