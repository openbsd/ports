# $OpenBSD: Makefile,v 1.3 2014/11/01 20:32:54 zhuk Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.8.0
DISTNAME =	phonon-backend-vlc-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}

LIB_DEPENDS =	x11/vlc>=2

WANTLIB =	lib/qt4/QtGui m vlc vlccore

.include <bsd.port.mk>
