# $OpenBSD: Makefile,v 1.2 2014/07/10 19:50:26 zhuk Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.7.1
DISTNAME =	phonon-backend-vlc-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}

LIB_DEPENDS =	x11/vlc>=2

WANTLIB =	lib/qt4/QtGui m vlc vlccore

.include <bsd.port.mk>
