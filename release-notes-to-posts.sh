#!/usr/bin/env bash

release-notes-to-posts() {
    echo "+ Extract releases from repo $1"
    while read -r release; do
        test -f "content/posts/release-$1-${release}.md" && {
            echo "- Convert release $release to post : Skip"
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
- opensoure
- github
- release
---
'"${2}"'{{.body}}' >"content/posts/release-$1-${release}.md"
        if [ -f "content/posts/release-$1-${release}.md" ]; then
            echo "- Convert release $release to post : Done"
        else
            echo "- Convert release $release to post : Fail"
            exit 1
        fi
    done < <(gh release list --exclude-drafts --exclude-pre-releases --repo "rlespinasse/$1" | cut -f1)
}

# release notes
release-notes-to-posts drawio-exporter
release-notes-to-posts wints

# extra '#' is due to semantic-release release-generation
release-notes-to-posts docker-drawio-desktop-headless '#'
release-notes-to-posts drawio-export '#'
release-notes-to-posts drawio-export-action '#'
release-notes-to-posts git-commit-data-action '#'
release-notes-to-posts github-slug-action '#'
release-notes-to-posts release-that '#'
release-notes-to-posts shortify-git-revision '#'
release-notes-to-posts slugify-value '#'

# [archived]
#release-notes-to-posts issues-tracker-action '#'
#release-notes-to-posts drawio-cli '#'
