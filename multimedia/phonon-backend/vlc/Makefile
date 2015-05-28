# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:24 pascal Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.8.0
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}

LIB_DEPENDS =	x11/vlc>=2

WANTLIB =	lib/qt4/QtGui m vlc vlccore

.include <bsd.port.mk>
