# $OpenBSD: Makefile,v 1.3 2013/11/24 19:56:33 zhuk Exp $

CATEGORIES =	www
COMMENT =	Webkit-based KPart for KDE
HOMEPAGE =	https://projects.kde.org/projects/extragear/base/kwebkitpart
DISTNAME =	kwebkitpart-1.2
REVISION =	1

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	ftp://3ps.if.ua/pub/OpenBSD/distfiles/ \
		http://spacehopper.org/mirrors/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kdewebkit ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

RUN_DEPENDS =	x11/gtk+2,-guic

MODULES =	x11/kde4

MODKDE4_USE =	libs

.include <bsd.port.mk>
