COMMENT =		audio time-stretching and pitch-shifting library

DISTNAME =		rubberband-3.2.1
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS =		rubberband 1.0

CATEGORIES =		audio
HOMEPAGE =		https://breakfastquay.com/rubberband

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX}
WANTLIB +=		c fftw3 m pthread samplerate sndfile vamp-sdk

# C++11
COMPILER =		base-clang ports-gcc

SITES =			https://breakfastquay.com/files/releases/

MODULES =               devel/meson

LIB_DEPENDS =		audio/libsamplerate \
			audio/libsndfile \
			audio/vamp-plugin-sdk \
			math/fftw3

BUILD_DEPENDS =		audio/ladspa \
			audio/lv2 \
			devel/boost

CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lboost_unit_test_framework"
CONFIGURE_ARGS =	-Djni=disabled \
			-Dfft=fftw \
			-Dresampler=libsamplerate

.include <bsd.port.mk>
