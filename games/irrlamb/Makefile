# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:19 sthen Exp $

V =		0.2.1
COMMENT =	third person, 3D physics game
DISTNAME =	irrlamb-$V-src
PKGNAME =	irrlamb-$V
CATEGORIES =	games x11
REVISION =	2

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody Irrlicht
WANTLIB += X11 Xext Xrandr Xxf86vm freetype ogg sqlite3 vorbis
WANTLIB += LinearMath c m openal vorbisfile
WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}

MASTER_SITES =	https://github.com/jazztickets/irrlamb/releases/download/v$V/

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.3

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		databases/sqlite3 \
		devel/bullet \
		x11/irrlicht

RUN_DEPENDS =	devel/desktop-file-utils

WRKDIST =	${WRKDIR}/irrlamb-$V

NO_TEST =	Yes

post-patch:
	sed -i -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/irrlamb
	sed -i -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
