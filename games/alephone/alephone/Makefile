DPB_PROPERTIES =	parallel

COMMENT =		open source game engine based on Marathon 2: Durandal

DATE =			20240822
DISTNAME =		AlephOne-${DATE}
PKGNAME =		alephone-1.10
CATEGORIES =		games x11
EXTRACT_SUFX =		.tar.bz2

DIST_SUBDIR ?=		alephone

HOMEPAGE =		https://alephone.lhowon.org/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${DATE}/

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_net
WANTLIB += SDL2_ttf avcodec avformat avutil boost_filesystem boost_system
WANTLIB += c curl m openal png sndfile swresample swscale z zzip

# GL GLU

# C++17
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		archivers/zziplib \
			audio/openal \
			devel/boost \
			devel/sdl2-net \
			devel/sdl2-image \
			devel/sdl2-ttf \
			audio/libsndfile \
			graphics/ffmpeg \
			net/curl

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-opengl \
			--without-miniupnpc
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
