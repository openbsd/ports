# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:58 sthen Exp $

COMMENT =	KDE development helper scripts
DISTNAME =	kde-dev-scripts-${VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://kde.org/applications/development/

# At build time
MODKDE5_DOCS = yes

MODULES +=	lang/python \
		perl

RUN_DEPENDS =	math/graphviz \
		shells/bash

MODPERL_ADJ_FILES = \
	colorsvn \
	cvs-clean \
	cvsblame \
	cvscheck \
	fixkdeincludes \
	fixuifiles \
	extend_dmalloc \
	cxxmetric \
	cvslastchange \
	extractattr \
	extractrc \
	svnintegrate \
	svnlastchange \
	svn-clean \
	png2mng.pl \
	noncvslist \
	kdemangen.pl \
	includemocs \
	krazy-licensecheck

MODPY_ADJ_FILES = \
	grantlee_strings_extractor.py \
	kde-systemsettings-tree.py \
	kde_generate_export_header \
	kdelnk2desktop.py \
	reviewboard-am \
	zonetab2pot.py \

pre-configure:
	${SUBST_CMD} ${WRKSRC}/draw_lib_dependencies

.include <bsd.port.mk>
