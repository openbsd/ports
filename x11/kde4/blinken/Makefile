# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	KDE game Simon Says
DISTNAME =	blinken-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
