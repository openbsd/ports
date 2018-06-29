# $OpenBSD: Makefile,v 1.12 2018/06/29 22:16:29 espie Exp $

COMMENT =	KDE mouse clicker for accessibility users
DISTNAME =	kmousetool-${MODKDE4_VERSION}
REVISION =	5

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
