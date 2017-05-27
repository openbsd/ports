# $OpenBSD: Makefile,v 1.22 2017/05/27 04:54:31 espie Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		kart racing game with OSS mascots

V =			0.9.2
REVISION =		0
BASENAME =		supertuxkart-${V}
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xrandr c curl freetype jpeg
WANTLIB += m ogg openal png pthread vorbis vorbisfile z ${LIBECXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake
WANT_CXX =		base gcc

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
