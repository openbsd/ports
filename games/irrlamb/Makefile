# $OpenBSD: Makefile,v 1.3 2015/08/25 05:12:44 bentley Exp $

V =		0.1.1
COMMENT =	third person, 3D physics game
DISTNAME =	irrlamb-$V-src
PKGNAME =	irrlamb-$V
REVISION =	1
CATEGORIES =	games x11

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody Irrlicht
WANTLIB += LinearMath c m openal pthread stdc++

GH_ACCOUNT =	jazztickets
GH_PROJECT =	irrlamb
GH_TAGNAME =	v$V

MODULES =	devel/cmake

LIB_DEPENDS =	audio/openal \
		devel/bullet \
		x11/irrlicht

RUN_DEPENDS =	devel/desktop-file-utils

# dos2unix the code before applying a patch
post-extract:
	perl -pi -e 'tr/\r//d' ${WRKSRC}/src/stb_vorbis/stb_vorbis.c

post-patch:
	sed -i -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/irrlamb
	sed -i -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
