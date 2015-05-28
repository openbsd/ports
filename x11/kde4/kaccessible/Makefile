# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:26 pascal Exp $

COMMENT =	KDE screenreader and focus tracking
DISTNAME =	kaccessible-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += speechd

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
