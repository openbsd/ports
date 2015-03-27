# $OpenBSD: Makefile,v 1.5 2015/03/27 08:16:21 ajacoutot Exp $

COMMENT =	galactic strategy game for KDE
DISTNAME =	konquest-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
