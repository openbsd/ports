# $OpenBSD: Makefile,v 1.30 2020/03/18 18:57:45 sebastia Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		kart racing game with OSS mascots

V =			0.9.3
BASENAME =		supertuxkart-${V}
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL X11 Xrandr c curl freetype jpeg
WANTLIB += m ogg openal png vorbis vorbisenc vorbisfile z SDL

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			devel/sdl \
			net/curl \
			graphics/png \
			graphics/jpeg

CONFIGURE_ARGS +=	-DUSE_WIIUSE=OFF \
			-DUSE_FRIBIDI=OFF \
			-DBUILD_RECORDER=OFF

WRKDIST =		${WRKDIR}/supertuxkart-${V}

NO_TEST =		Yes

.include <bsd.port.mk>
