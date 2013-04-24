# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 08:42:12 zhuk Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.6.1
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	2

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/src/}

LIB_DEPENDS =	x11/vlc>=2

WANTLIB =	lib/qt4/QtGui m stdc++ vlc vlccore

.include <bsd.port.mk>
