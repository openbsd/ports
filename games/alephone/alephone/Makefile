#	$OpenBSD: Makefile,v 1.30 2019/07/12 20:46:14 sthen Exp $

DIST_SUBDIR ?=		alephone
COMMENT =		open source game engine based on Marathon 2: Durandal

DATE =			20150620
DISTNAME =		AlephOne-${DATE}
PKGNAME =		alephone-1.2.1
REVISION =		6

EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		games x11

HOMEPAGE =		https://alephone.lhowon.org/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${DATE}/

WANTLIB +=		GL GLU c m pthread ${COMPILER_LIBCXX} z
WANTLIB +=		SDL SDL_net SDL_image SDL_ttf mad png sndfile
WANTLIB +=		smpeg speex speexdsp vorbisfile zzip
WANTLIB += avcodec avformat avutil swscale boost_filesystem boost_system curl

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/automake/${AUTOMAKE_VER} \
			devel/autoconf/${AUTOCONF_VER}
LIB_DEPENDS =		archivers/zziplib \
			devel/boost \
			devel/sdl-net \
			devel/sdl-image \
			devel/sdl-ttf \
			devel/smpeg \
			audio/libmad \
			audio/libsndfile \
			audio/speex \
			audio/libvorbis \
			graphics/ffmpeg \
			net/curl

USE_BZIP2 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VER =		2.61
AUTOMAKE_VER =		1.9
CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VER} \
			AUTOMAKE_VERSION=${AUTOMAKE_VER} \
			CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=		-Wno-c++11-narrowing -Wno-deprecated-register
.endif

.include <bsd.port.mk>
