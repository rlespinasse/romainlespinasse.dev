---
title: "Antora 1.0: Elevate Your Wiki to a Professional Documentation Hub"
date: 2018-09-11T10:42:00+02:00
draft: false
showToC: false
summary: Discover Antora as your next documentation site.
images: 
- /img/posts/antora/featured.jpg
tags: 
- antora
- asciidoctor
categories:
- Technical posts
---

> Bonjour, la version française de cet article peut être lue [sur ce site](/posts/antora/)

No matter what your IT project is, there will always be a need to store some documentation.
The choice to use a [wiki](https://en.wikipedia.org/wiki/Wiki) is quite common in the corporate world.

Let's talk about you, developer on one of these programs, is documentation of your different projects managed by an easily accessible and editable wiki?

If you look at the content of this wiki, you will probably find:

* Pages with sections who `still need documentation`,
* Pages with incorrect information,
* Deprecated pages,
* Pages only useful for one team or another,
* Pages with documentation on a feature still in development.

So you wonder how to make it easier for people working on different projects.

At this point, the principle of `documentation as code` seems to be the solution to your needs.

## You embark on the adventure of documentation as code

Seeing the documentation as code as the sources of the program is interesting.
You want to replace your current wiki with a project dedicated to documentation, and allowing you to make `code review` on these changes.
But that only corrects part of the problem, you only replaced wiki pages with files written in another format like:

* the [Markdown](https://daringfireball.net/projects/markdown/syntax) format,
* the [Asciidoc](http://www.methods.co.nz/asciidoc/) format.

Due to its simple and accessible syntax, `Markdown` is one of the most popular formats, especially on sites like github or gitlab, but it is too simple for further documentation.

`Asciidoc` is [more interesting](https://github.com/asciidoctor/asciidoctor.org/blob/master/docs/_includes/asciidoc-vs-markdown.adoc), allowing to be more expressive with your documentation.
The associated tool [Asciidoctor](https://asciidoctor.org/) provides [useful features](https://asciidoctor.org/docs/asciidoc-writers-guide/) as well as integrations such as diagram generation with [plantuml](http://plantuml.com/).

You therefore choose to write the **Asciidoctor** documentation in each of your projects.
This allows you to deliver the documentation at the same time as the associated code.

Even if your program consists of a set of projects, each with its own documentation, you want to keep a single site to access them.

The people behind Asciidoctor have recently released an aggregated documentation site generator: [Antora](https://antora.org/) in a stable version (`1.0.0`) to the open-source community.

![Antora](/img/posts/antora/site.png)

## You create your new documentation site with Antora / Asciidoctor

A site generated by Antora is [composed of three elements](https://docs.antora.org):

* Your projects that contain their documentation,
* The [**playbook**](https://docs.antora.org/antora/1.0/playbook/) that configures the generation of the documentation site,
* A [**UI**](https://docs.antora.org/antora/1.0/playbook/configure-ui/) that defines the visuals of your site (the default one will be appropriate).

To be used by Antora, a project must respect a [file structure](https://docs.antora.org/antora/1.0/component-structure/)

``` Text
./docs
├── antora.yml
└── modules
    └── ROOT
        ├── _attributes.adoc
        ├── nav.adoc
        └── pages
            ├── _attributes.adoc
            └── index.adoc
```

### You set up documentation as code on your projects

So you apply yourself to put it up on:

* Your APIs ([api A](https://github.com/rlespinasse/api-a), [api B](https://github.com/rlespinasse/api-b), [api C](https : //github.com/rlespinasse/api-c))
* Your tools ([build tools](https://github.com/rlespinasse/buildtools)),
* Your development guide ([guidelines](https://github.com/rlespinasse/guidelines)).

The documentation in `Asciidoctor` format is available in the `docs` folder.
> It is not necessary to use this tree for `guideline`, which is only a documentation project.

### You are preparing to generate your documentation site

So you create a [specific project](https://github.com/rlespinasse/docssite) to store the **playbook**.

```yaml
site:
  title: "Romain Lespinasse // Docs"
  start_page: guidelines::index
  url: https://rlespinasse.github.io/docssite
content:
  sources:
  - url: https://github.com/rlespinasse/api-a.git
    branches: master
    tags: v*
    start_path: docs
  - url: https://github.com/rlespinasse/api-b.git
    branches: master
    tags: v*
    start_path: docs
  - url: https://github.com/rlespinasse/api-c.git
    branches: master
    tags: v*
    start_path: docs
  - url: https://github.com/rlespinasse/buildtools.git
    branches: master
    tags: v*
    start_path: docs
  - url: https://github.com/rlespinasse/guidelines.git
    branches: master
ui:
  bundle:
    url: https://gitlab.com/antora/antora-ui-default/-/jobs/artifacts/master/raw/build/ui-bundle.zip?job=bundle-stable
    snapshot: true
  output_dir: ui-bundle
  supplemental_files: ./supplemental-ui
output:
  dir: ./docs
```

The content of the [playbook](https://docs.antora.org/antora/1.0/playbook/playbook/) `site.yml` defines:

* the [related information](https://docs.antora.org/antora/1.0/playbook/configure-site/) to the site itself via `site:`,
* the definition of [content](https://docs.antora.org/antora/1.0/playbook/configure-content-sources/) via `content:`,
* the [theme of the site](https://docs.antora.org/antora/1.0/playbook/configure-ui/) via `ui:`,
* The [build folder](https://docs.antora.org/antora/1.0/playbook/configure-output/) via `output:`.

The official documentation does not refer to it because it is a [development still experimental](https://gitlab.com/antora/antora/issues/147) but you set up the navigation bar to add the useful links via a `header-content.hbs` file in `supplemental-ui/partials/`.
> Other template files are available for replacement in [Antora Default UI](https://gitlab.com/antora/antora-ui-default/tree/master/src/partials).

## You generate and deploy your new documentation site

You can install antora via this [guide](https://docs.antora.org/antora/1.0/install/install-antora/) or use the docker image via the ``docker run -v `pwd` command: / antora --rm antora / antora --stacktrace site.yml`` (where **site.yml** is the playbook)

The playbook defines the `docs` folder to make your new documentation site available.

![Site preview](/img/posts/antora/site-preview.png)

For example, to make it accessible on Github, you deploy it via the Github Pages of your `docssite` project.

![Github document configuration](/img/posts/antora/github.png)

The platform will automatically expose the contents of the `/docs` folder to [https://rlespinasse.github.io/docssite](https://rlespinasse.github.io/docssite).

## You make others benefit from the new documentation site

From now on, people working on the program will be able to add, create, and maintain documentation of each project very easily. Your new documentation site gives the access to all these pages.

The site [docs.antora.org](https://docs.antora.org) uses the `Antora` project itself.

> Thanks to [Aurélien Allienne](https://twitter.com/sn0rks), [Antoine Méausoone](https://twitter.com/AMeausoone), [Tanguy Baudrin](https://twitter.com/TanguyBAUDRIN), and [Tony Proum](https://twitter.com/chezTone) for reviewing the article.
> Thanks to [Aurélien Allienne](https://twitter.com/sn0rks), [Guillaume Mantopoulos](http://twitter.com/MrGuiMan) for the review of the translation from french to english of this article .

This post have been published first on [Codeshake by SFEIR](https://medium.com/codeshake/replace-your-wiki-with-a-documentation-site-4f0da329fe92).
