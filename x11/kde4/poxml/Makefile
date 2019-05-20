# $OpenBSD: Makefile,v 1.12 2019/05/20 22:15:28 naddy Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	4

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo iconv intl

MODKDE4_USE =	libs
LIB_DEPENDS =	devel/gettext,-tools

# redundant but required to work around msgfmt poisoning in bsd.port.mk
BUILD_DEPENDS =	devel/gettext,-tools

.include <bsd.port.mk>
