# $OpenBSD: Makefile,v 1.12 2013/11/24 19:56:33 zhuk Exp $

COMMENT =	small and funny applications for KDE
DISTNAME =	kdetoys-${MODKDE4_VERSION}
REVISION =	0

# Amor misses OpenBSD mascot. Who'd like to fix this major issue?

WANTLIB =  c m pthread stdc++ ${MODPY_WANTLIB}
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kscreensaver

MODKDE4_USE =	workspace

# last one should be:
#WANTLIB += kparts kscreensaver>=8

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
