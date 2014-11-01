# $OpenBSD: Makefile,v 1.6 2014/11/01 21:09:46 zhuk Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtXml
WANTLIB += gettextpo

MODULES =	devel/gettext
MODKDE4_USE =	libs

.include <bsd.port.mk>
