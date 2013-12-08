# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	KDE screenreader and focus tracking
DISTNAME =	kaccessible-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += speechd

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
