# $OpenBSD: Makefile,v 1.3 2015/08/25 13:18:26 sthen Exp $

BROKEN-mips64el =	Bus error on startup, no core file left

V =		0.4.1
COMMENT =	2D MMORPG focused on grinding
DISTNAME =	choria-${V}-src
PKGNAME =	choria-${V}
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	https://code.google.com/p/choria/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += Irrlicht c m pthread sqlite3 stdc++

MASTER_SITES =	https://choria.googlecode.com/files/

MODULES =	devel/cmake

LIB_DEPENDS =	x11/irrlicht

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/choria
	perl -pi -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
