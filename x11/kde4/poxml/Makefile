# $OpenBSD: Makefile,v 1.2 2013/12/11 13:35:16 zhuk Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/poxml

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtXml

MODULES =	devel/gettext
MODKDE4_USE =	libs

# We have only pre-compiled Antlr3, and poxml wants
# C runtime from Antlr2, which is not easy to port
CONFIGURE_ARGS =	-DWITH_Antlr2:Bool=FALSE

.include <bsd.port.mk>
