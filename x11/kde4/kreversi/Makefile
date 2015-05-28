# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:29 pascal Exp $

COMMENT =	Go-like board game for KDE
DISTNAME =	kreversi-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtScript
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdeclarative

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
