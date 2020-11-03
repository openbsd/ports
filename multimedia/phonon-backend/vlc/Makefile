# $OpenBSD: Makefile,v 1.12 2020/11/03 17:38:35 rsadowski Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.11.1
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}
EXTRACT_SUFX = .tar.xz

MODULES =	devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/vlc>=2

NO_TEST =		Yes

.include <bsd.port.mk>
