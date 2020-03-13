# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:53 rsadowski Exp $

QT5NAME =		QtX11Extras
COMMENT =		X11-specific parts of Qt

SHARED_LIBS +=  Qt5X11Extras                 3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui m

FLAVORS =		debug

.include <bsd.port.mk>
