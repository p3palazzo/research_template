Research project template
=========================

Contents
--------

This repository is a template for starting new research project
repositories. It comes preloaded with some useful stuff:

- Citation Style Language [citation
  styles](https://github.com/citation-style-language/styles) installed
  as a submodule in `lib/` for managing citations;
- A `.gitignore` file for LaTeX, Jekyll (for GitHub pages), Python, and
  R, using GitHub's [gitignore
  templates](https://github.com/github/gitignore);
- GitHub pages should be set up to use `docs/` on the Master branch;
- [Reveal.js](https://revealjs.com/) installed as a submodule in
  `docs/` for creating web based slide presentations;
- A preconfigured `_config.yml` for Jekyll so it does not try to mess
  with you Reveal.js installation or to generate a web page from the
  README (there is a set of default options for using Pandoc to
  generate `docs/index.html` from the README, see below);
- Preconfigured defaults for generating documents with
  [Pandoc](http://pandoc.org), in the `spec` folder;
- [Pandoc-xnos](https://github.com/tomduck/pandoc-xnos) filter running
  inside a virtual environment;
- [Lice](https://github.com/licenses/lice) to generate your license
  (Creative Commons attribution--share-alike by default), also in the
  virtual environment;
- A [Makefile](https://www.gnu.org/software/make/) to set up all of the
  above with some sensible defaults (inspect the file to find out what
  they are and change as needed).

This is the general setup I use to start a research project writing in
Markdown and using Pandoc to generate PDFs or Word documents. It works
nicely in conjunction with an Open Science Framework project. I have
tried to keep it simple and avoid feature bloat. Feel free to share
your favorite starter setup with me on Twitter.

:warning: For now, the makefile is set up to work only on Linux/Mac
because it invokes shell commands. Help is appreciated in converting it
to Python for cross-platform support.

Usage
-----

- Click on the "Use this template" button above the file list and see
  further instructions on the page [Creating a repository from a
  template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template)
  on GitHub's Help documentation;
- After checking out the repository, use `make install` to set up
  submodules and the virtual environment (I expect you have `rsync` and
  Python 3 with `pip` installed);
- Citation styles are updated frequently; run `make submodule`
  often to keep up-to-date with the latest revisions.

:warning: By default, only the `chicago-author-date.csl` style is
checked out. Edit `.install/modules/lib/styles/info/sparse-checkout` and
run `make submodule` at any time if you want to add other citation
styles.

You may also want to fork this repository to create your own template,
or contribute features to this one.

Tip: if you have several repositories based on this template, you might
not want to replicate the virtual environment on every one of them, but
rather invoke it from a single location, to save a little disk space. If
this is the case, do not run `make install` but instead pick the `make`
targets you need individually (inspect the Makefile to find out which
ones).

License
-------

 Research project template repository
 Copyright (C) 2020  Pedro P. Palazzo
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

- The Citations Styles Language Styles belong to
  [CitationStyles.org](http://citationstyles.org/) and are licensed
  under the [Creative Commons Attribution-ShareAlike 3.0 Unported
  license](http://creativecommons.org/licenses/by-sa/3.0/). The
- Reveal.js framework is Copyright (C) 2019 Hakim El Hattab,
  http://hakim.se, and is licensed under the [MIT
  License](https://raw.githubusercontent.com/licenses/license-templates/master/templates/mit.txt).
- [Pandoc-Xnos](https://github.com/tomduck/pandoc-xnos) is licensed by
  Thomas G. Duck under the
  [GPL v3](https://raw.githubusercontent.com/licenses/license-templates/master/templates/gpl3.txt).
- I am not affiliated in any way with any of the organizations or people
  whose software I have included here.
