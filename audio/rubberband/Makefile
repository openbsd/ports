# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:40 sthen Exp $

COMMENT =		audio time-stretching and pitch-shifting library

DISTNAME =		rubberband-1.8.2
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS =		rubberband 0.0

CATEGORIES =		audio
HOMEPAGE =		https://breakfastquay.com/rubberband

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX}
WANTLIB +=		c fftw3 m pthread samplerate sndfile vamp-sdk

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://breakfastquay.com/files/releases/

LIB_DEPENDS =		audio/libsamplerate \
			audio/libsndfile \
			audio/vamp-plugin-sdk \
			math/fftw3

BUILD_DEPENDS =		audio/ladspa

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include"
MAKE_FLAGS =		DYNAMIC_FULL_VERSION=${LIBrubberband_VERSION} \
			DYNAMIC_ABI_VERSION=${LIBrubberband_VERSION}

NO_TEST =		Yes

.include <bsd.port.mk>
