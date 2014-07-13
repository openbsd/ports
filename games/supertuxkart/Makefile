# $OpenBSD: Makefile,v 1.13 2014/07/13 15:47:08 pascal Exp $

COMMENT =		kart racing game with OSS mascots

V =			0.8.1
BASENAME =		supertuxkart-${V}
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody GL GLU
WANTLIB += ICE LinearMath SM X11 Xext Xxf86vm bz2 c curl enet
WANTLIB += jpeg m ogg openal png pthread stdc++ vorbis vorbisfile
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			net/curl \
			net/enet \
			graphics/png \
			graphics/jpeg \
			devel/bullet

CONFIGURE_ARGS +=	-DUSE_WIIUSE=OFF \
			-DUSE_FRIBIDI=OFF \
			-DUSE_IRR_INTERNAL_LIBS=OFF \
			-DUSE_INTERNAL_ENET=OFF \
			-DUSE_INTERNAL_BULLET=OFF

WRKDIST =		${WRKDIR}/SuperTuxKart-${V}

NO_TEST =		Yes

post-extract:
	perl -pi -e 's/Date: //' ${WRKSRC}/lib/irrlicht/source/Irrlicht/glext.h

.include <bsd.port.mk>
