# $OpenBSD: Makefile,v 1.10 2013/03/11 11:07:40 espie Exp $

COMMENT =		kart racing game with OSS mascots

V =			0.8
BASENAME =		supertuxkart-${V}
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xxf86vm c curl fribidi
WANTLIB += m ogg openal pthread stdc++ vorbis vorbisfile

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			devel/fribidi \
			net/curl

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/SuperTuxKart-${V}

NO_TEST =		Yes

# now needs a modified, internal version of Irrlicht.  glorious.
pre-build:
	cd ${WRKSRC}/lib/irrlicht/source/Irrlicht && env -i \
		CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		NDEBUG=1 \
		CPPFLAGS="-DNO_IRR_COMPILE_WITH_JOYSTICK_EVENTS_" \
		${MAKE_PROGRAM}

.include <bsd.port.mk>
