# $OpenBSD: Makefile,v 1.7 2017/04/10 11:45:28 sthen Exp $

BROKEN-mips64el =	Bus error on startup, no core file left

V =		0.4.1
REVISION =	2
COMMENT =	2D MMORPG focused on grinding
DISTNAME =	choria-${V}-src
PKGNAME =	choria-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://github.com/jazztickets/choria

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += Irrlicht c m pthread sqlite3 ${LIBCXX}

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=choria/}

MODULES =	devel/cmake

LIB_DEPENDS =	x11/irrlicht \
		databases/sqlite3

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/choria
	perl -pi -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt
	cp ${FILESDIR}/FindSqlite.cmake ${WRKSRC}/

.include <bsd.port.mk>
