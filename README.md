Research project template
=========================

Contents
--------

This repository is a template for starting new research project
repositories. It comes preloaded with some useful stuff:

- Citation Style Language [citation
  styles](https://github.com/citation-style-language/styles) installed
  as a submodule in `spec/` for managing citations; styles than come
- A `.gitignore` file for LaTeX and Jekyll (the latter being used for
  GitHub pages) using GitHub's [gitignore
  templates](https://github.com/github/gitignore) as well as providing
  an `_output` folder where I store generated PDFs and Word files;
- GitHub pages set up to use `docs/` on the Master branch;
- [Reveal.js](https://revealjs.com/) installed as a submodule in
  `docs/` for creating web-based slide presentations;
- A preconfigured `_config.yml` for Jekyll so it does not try to mess
  with you Reveal.js installation or to generate a web page from the
  README (there is a set of default options for using Pandoc to
  generate `docs/index.html` from the README, see below);
- Preconfigured defaults for generating documents with
  [Pandoc](http://pandoc.org), in the `spec` folder.

This is the general setup I use to start a research project writing in
Markdown and using Pandoc to generate PDFs or Word documents. It works
nicely in conjunction with an Open Science Framework project. I have
tried to keep it simple and avoid feature bloat. Feel free to share
your favorite starter setup with me on Twitter.

Usage
-----

Click on the "Use this template" button above the file list and see
further instructions on the page [Creating a repository from a
template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template)
on GitHub's Help documentation.

You may also fork this repository to create your own template, or
contribute features to this one.

License
-------

This repository is licensed under the [GPL
v3](https://raw.githubusercontent.com/licenses/license-templates/master/templates/gpl3.txt),
meaning you can do whatever you like with your fork of it, and I
provide no guarantee whatsoever that it will not cause your house to
burst up in flames or other unintended side effects.

The Citations Styles Language Styles belong to
[CitationStyles.org](http://citationstyles.org/) and are licensed
under the [Creative Commons Attribution-ShareAlike 3.0 Unported
license](http://creativecommons.org/licenses/by-sa/3.0/). The
Reveal.js framework is Copyright (C) 2019 Hakim El Hattab,
http://hakim.se, and is licensed under the [MIT
License](https://raw.githubusercontent.com/licenses/license-templates/master/templates/mit.txt).
I am not affiliated in any way with any of the organizations or people
whose software I have included here.

