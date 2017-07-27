# $OpenBSD: Makefile,v 1.6 2017/07/27 09:55:45 sthen Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.8.2
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	0

LIB_DEPENDS =	x11/vlc>=2

WANTLIB =	lib/qt4/QtGui m vlc vlccore ${COMPILER_LIBCXX}

.include <bsd.port.mk>
