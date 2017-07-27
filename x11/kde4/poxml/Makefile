# $OpenBSD: Makefile,v 1.9 2017/07/27 11:57:50 sthen Exp $

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

.include <bsd.port.mk>
