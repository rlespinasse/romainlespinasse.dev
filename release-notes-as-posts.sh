#!/usr/bin/env bash

release-notes-as-posts() {
    echo "+ Extract releases from repo $1"
    while read -r release; do
        test -f "content/oss/release-$1-${release}.md" && {
            echo "- Convert release $release notes as post : Skip"
            continue
        }
        gh release view "${release}" --repo "rlespinasse/$1" --json body,publishedAt,name --template \
            '---
title: "Project '"${1}"' | Release {{.name}}"
date: {{.publishedAt}}
toc: false
description: 
draft: false
tags:
- opensource
- github
- release
---
'"${2}"'{{.body}}' >"content/oss/release-$1-${release}.md"
        if [ -f "content/posts/release-$1-${release}.md" ]; then
            echo "- Convert release $release notes as post : Done"
        else
            echo "- Convert release $release notes as post : Fail"
            exit 1
        fi
    done < <(gh release list --exclude-drafts --exclude-pre-releases --repo "rlespinasse/$1" | cut -f1)
}

# release notes
release-notes-as-posts drawio-exporter
release-notes-as-posts wints

# extra '#' is due to semantic-release release-generation
release-notes-as-posts docker-drawio-desktop-headless '#'
release-notes-as-posts drawio-export '#'
release-notes-as-posts drawio-export-action '#'
release-notes-as-posts git-commit-data-action '#'
release-notes-as-posts github-slug-action '#'
release-notes-as-posts release-that '#'
release-notes-as-posts shortify-git-revision '#'
release-notes-as-posts slugify-value '#'

# [archived]
#release-notes-as-posts issues-tracker-action '#'
#release-notes-as-posts drawio-cli '#'
