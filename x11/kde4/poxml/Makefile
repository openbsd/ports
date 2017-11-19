# $OpenBSD: Makefile,v 1.10 2017/11/19 11:37:41 naddy Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo

MODULES =	devel/gettext
MODKDE4_USE =	libs
LIB_DEPENDS =	devel/gettext-tools

# redundant but required to work around msgfmt poisoning in bsd.port.mk
BUILD_DEPENDS =	devel/gettext-tools

.include <bsd.port.mk>
