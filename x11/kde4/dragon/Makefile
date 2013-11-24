# $OpenBSD: Makefile,v 1.2 2013/11/24 19:56:30 zhuk Exp $

COMMENT =	simple video player for KDE
DISTNAME =	dragon-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	multimedia

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += soprano

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
