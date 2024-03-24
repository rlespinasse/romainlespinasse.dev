#!/usr/bin/env bash

release-notes-as-posts() {
    echo "+ Extract releases from repo $1"
    while read -r year; do
        echo "- ${year} releases"
        dates=$(gh release list --exclude-drafts --exclude-pre-releases --repo "rlespinasse/$1" --jq '.[]|select(.publishedAt | startswith("'"${year}"'"))' --json name,publishedAt | jq -r '.publishedAt' | sort -r)
        last_date=$(echo "${dates}" | head -1)
        releases_count=$(echo "${dates}" | wc -l)

        cat <<EOF >"content/oss/release-$1-${year}.md"
---
title: "Project '${1}' | ${year} Releases"
date: ${last_date}
toc: false
description: Changelog of the ${releases_count} releases of ${year}
draft: false
tags:
- opensource
- github
- release
---
EOF

        while read -r release; do
            echo "\\ Add release ${release}"
            gh release view "${release}" --repo "rlespinasse/$1" --json body \
                --template "${2}"'{{.body}}' >>"content/oss/release-$1-${year}.md"
        done < <(gh release list --exclude-drafts --exclude-pre-releases --order desc --repo "rlespinasse/$1" --jq '.[]|select(.publishedAt | startswith("'"${year}"'"))' --json name,publishedAt | jq -r '.name')

    done < <(gh release list --exclude-drafts --exclude-pre-releases --order desc --repo "rlespinasse/$1" --json publishedAt | jq -r '.[].publishedAt' | sed 's/-.*//' | uniq)
}

# release notes
# extra '#' is due to semantic-release release-generation
release-notes-as-posts docker-drawio-desktop-headless '#'
release-notes-as-posts drawio-export '#'
release-notes-as-posts drawio-export-action '#'
release-notes-as-posts drawio-exporter '#'
release-notes-as-posts git-commit-data-action '#'
release-notes-as-posts github-slug-action '#'
release-notes-as-posts release-that '#'
release-notes-as-posts shortify-git-revision '#'
release-notes-as-posts slugify-value '#'
release-notes-as-posts wints '#'
