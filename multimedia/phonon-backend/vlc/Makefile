# $OpenBSD: Makefile,v 1.11 2020/08/20 18:00:14 rsadowski Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.11.1
DISTNAME =	phonon-backend-vlc-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}
EXTRACT_SUFX = .tar.xz

MODULES =	devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/vlc>=2

NO_TEST =		Yes

.include <bsd.port.mk>
