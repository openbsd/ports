# $OpenBSD: Makefile,v 1.6 2014/04/29 08:54:55 zhuk Exp $

COMMENT =	KDE development helper scripts
DISTNAME =	kde-dev-scripts-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kde-dev-scripts

MODULES =		perl lang/python
MODKDE4_USE =		libs
MODKDE4_RESOURCES =	Yes
MODPY_BUILD_DEP =	No
REVISION =		1

MODPERL_ADJ_FILES = \
	colorcvs \
	colorsvn \
	cvs-clean \
	cvsblame \
	cvscheck \
	cvslastchange \
	extend_dmalloc \
	extractattr \
	extractrc \
	fixheaders \
	generate_string_table.pl \
	includemocs \
	kde-spellcheck.pl \
	kdemangen.pl \
	noncvslist \
	rc2kcfgxt.pl \
	svn-clean \
	svnlastchange

MODPY_ADJ_FILES = \
	grantlee_strings_extractor.py \
	kde-systemsettings-tree.py \
	kde_generate_export_header \
	kdelnk2desktop.py \
	kf5/resolve_kuit.py \
	rename_source_files \
	reviewboarddiff \
	svn2log.py \
	zonetab2pot.py

# Note: there are some Ruby scripts there, too; but they aren't being
# installed, so ignore them.

RUN_DEPENDS =	${MODQT_LIB_DEPENDS} \
		math/graphviz

.include <bsd.port.mk>
