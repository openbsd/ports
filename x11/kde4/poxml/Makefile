# $OpenBSD: Makefile,v 1.11 2017/11/21 00:13:05 naddy Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	3

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo iconv intl

MODKDE4_USE =	libs
LIB_DEPENDS =	devel/gettext-tools

# redundant but required to work around msgfmt poisoning in bsd.port.mk
BUILD_DEPENDS =	devel/gettext-tools

.include <bsd.port.mk>
