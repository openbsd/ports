# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:31 pascal Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo

MODULES =	devel/gettext
MODKDE4_USE =	libs

.include <bsd.port.mk>
