DPB_PROPERTIES =	parallel

DIST_SUBDIR ?=		alephone
COMMENT =		open source game engine based on Marathon 2: Durandal

DATE =			20200904
DISTNAME =		AlephOne-${DATE}
PKGNAME =		alephone-1.3.1

EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		games x11

HOMEPAGE =		https://alephone.lhowon.org/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${DATE}/

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SDL2_image SDL2_net
WANTLIB += SDL2_ttf avcodec avformat avutil boost_filesystem boost_system
WANTLIB += c curl expat m mad png sndfile speex speexdsp swscale
WANTLIB += vorbisfile z zzip

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/automake/${AUTOMAKE_VER} \
			devel/autoconf/${AUTOCONF_VER}
LIB_DEPENDS =		archivers/zziplib \
			devel/boost \
			devel/sdl2-net \
			devel/sdl2-image \
			devel/sdl2-ttf \
			audio/libmad \
			audio/libsndfile \
			audio/speex \
			audio/libvorbis \
			graphics/ffmpeg \
			net/curl

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			misc/shared-mime-info

USE_BZIP2 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VER =		2.65
AUTOMAKE_VER =		1.16
CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VER} \
			AUTOMAKE_VERSION=${AUTOMAKE_VER} \
			CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=		-Wno-c++11-narrowing -Wno-deprecated-register
.endif

.include <bsd.port.mk>
