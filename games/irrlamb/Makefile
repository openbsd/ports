# $OpenBSD: Makefile,v 1.2 2014/11/30 05:41:34 brad Exp $

V =		0.1.1
COMMENT =	third person, 3D physics game
DISTNAME =	irrlamb-${V}-src
PKGNAME =	irrlamb-${V}
REVISION =	0
CATEGORIES =	games x11

HOMEPAGE =	https://code.google.com/p/irrlamb/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody Irrlicht
WANTLIB += LinearMath c m openal pthread stdc++

MASTER_SITES =	https://irrlamb.googlecode.com/files/

MODULES =	devel/cmake

LIB_DEPENDS =	audio/openal \
		devel/bullet \
		x11/irrlicht

RUN_DEPENDS =	devel/desktop-file-utils

# dos2unix the code before applying a patch
post-extract:
	perl -pi -e 'tr/\r//d' ${WRKSRC}/src/stb_vorbis/stb_vorbis.c

post-patch:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/irrlamb
	perl -pi -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
