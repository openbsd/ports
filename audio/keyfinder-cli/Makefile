COMMENT =	 	estimate the musical key of an audio file

GH_ACCOUNT =		EvanPurkhiser
GH_PROJECT =		keyfinder-cli
GH_TAGNAME =		v1.1.2

CATEGORIES =		audio

MAINTAINER =		Raphael Graf <r@undefined.ch>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c fftw3
WANTLIB += keyfinder m swresample

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		audio/libkeyfinder \
			graphics/ffmpeg

MAKE_FLAGS =		MANDIR="${LOCALBASE}/man"

NO_TEST =		Yes

.include <bsd.port.mk>
