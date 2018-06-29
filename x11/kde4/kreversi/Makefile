# $OpenBSD: Makefile,v 1.10 2018/06/29 22:16:30 espie Exp $

COMMENT =	Go-like board game for KDE
DISTNAME =	kreversi-${MODKDE4_VERSION}
REVISION =	4

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtScript
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdeclarative

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
