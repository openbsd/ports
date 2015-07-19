# $OpenBSD: Makefile,v 1.8 2015/07/19 23:46:08 naddy Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo

MODULES =	devel/gettext
MODKDE4_USE =	libs
LIB_DEPENDS =	devel/gettext-tools

.include <bsd.port.mk>
