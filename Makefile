# Global variables {{{1
# ================
# Where make should look for things
VPATH = lib
vpath %.csl lib/styles
vpath %.yaml .:spec
vpath default.% lib/pandoc-templates

# Branch-specific targets and recipes {{{1
# ===================================

# Add prerequisites to the build target as needed or uncomment the PHONY
# target below.
# .PHONY : build
build :
	bundle exec jekyll build

# Install and cleanup {{{1
# ===================
# `make install` copies various config files and hooks to the .git
# directory and sets up standard empty directories:
# - link-template: sets up the template repo in a branch named `template`, for
#   when you want to update local boilerplates across different projects.
# - makedirs: creates standard folders for output (_book), received files
#   (_share), and figures (fig).
# - submodule: initializes the submodules for the CSL styles and for the
#   Reveal.js framework.
# - virtualenv: sets up a virtual environment (but you still need to activate
#   it from the command line).
.PHONY : install link-template makedirs submodule virtualenv bundle serve clean
install : link-template makedirs submodule csl virtualenv license
	bundle install

makedirs :
	-mkdir _share && mkdir _book && mkdir fig

csl : .install/git/modules/lib/styles/info/sparse-checkout
	rsync -aq .install/git/ .git/
	cd lib/styles && git config core.sparsecheckout true && \
		git checkout master && git pull && \
		git read-tree -m -u HEAD

submodule_init : template
	# Generating a repo from a GitHub template breaks the submodules.
	# As a workaround, we create a branch that clones directly from the
	# template repo, activate the submodules there, then merge it into
	# whatever branch was previously active (the master branch if your
	# repo has just been initialized).
	git checkout template
	git pull
	-git submodule init
	git submodule update
	git checkout -
	git merge template --allow-unrelated-histories

template :
	-git remote add template git@github.com:p3palazzo/research_template.git
	git fetch template
	git checkout -B template --track template/master
	git checkout -

virtualenv :
	python -m venv .venv && source .venv/bin/activate && \
		pip install -r .install/requirements.txt
	-rm -rf src

bundle :
	bundle update

license :
	source .venv/bin/activate && \
		lice --header cc_by_sa >> README.md && \
		lice cc_by_sa -f LICENSE

# `make clean` will clear out a few standard folders where only compiled
# files should be. Anything you might have placed manually in them will
# also be deleted!
clean :
	-rm -r _book/* _site/*

# vim: set foldmethod=marker :
