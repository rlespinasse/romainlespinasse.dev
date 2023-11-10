#!/usr/bin/env bash

repo-release-notes-to-posts() {
    echo "extract release from repo $1"
    while read -r release; do
        echo "- convert release $release"
        test -f "content/posts/$1-${release}.md" && continue
        gh release view "${release}" --repo "rlespinasse/$1" --json body,publishedAt,name --template \
            '---
title: "Project '"${1}"' | Release {{.name}}"
date: {{.publishedAt}}
toc: false
description: 
draft: false
tags:
- opensoure
- github
- release
---
'"${2}"'{{.body}}' >"content/posts/release-$1-${release}.md"
    done < <(gh release list --limit 100 --exclude-drafts --exclude-pre-releases --repo "rlespinasse/$1" | cut -f1)
}

# release notes
repo-release-notes-to-posts drawio-exporter
repo-release-notes-to-posts wints

# extra '#' is due to semantic-release release-generation
repo-release-notes-to-posts docker-drawio-desktop-headless '#'
repo-release-notes-to-posts drawio-export '#'
repo-release-notes-to-posts drawio-export-action '#'
repo-release-notes-to-posts git-commit-data-action '#'
repo-release-notes-to-posts github-slug-action '#'
repo-release-notes-to-posts release-that '#'
repo-release-notes-to-posts shortify-git-revision '#'
repo-release-notes-to-posts slugify-value '#'

# [archived]
#repo-release-notes-to-posts issues-tracker-action '#'
#repo-release-notes-to-posts drawio-cli '#'
