# $OpenBSD: Makefile,v 1.16 2015/08/01 23:07:30 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		kart racing game with OSS mascots

V =			0.9
BASENAME =		supertuxkart-${V}
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xrandr c curl jpeg
WANTLIB += m ogg openal png pthread vorbis vorbisfile z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			net/curl \
			graphics/png \
			graphics/jpeg

CONFIGURE_ARGS +=	-DUSE_WIIUSE=OFF \
			-DUSE_FRIBIDI=OFF

WRKDIST =		${WRKDIR}/supertuxkart-${V}

NO_TEST =		Yes

.include <bsd.port.mk>
