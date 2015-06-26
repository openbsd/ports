# $OpenBSD: Makefile,v 1.10 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	KDE game Simon Says
DISTNAME =	blinken-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
