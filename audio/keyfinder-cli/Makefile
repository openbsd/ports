COMMENT =		estimate the musical key of an audio file

GH_ACCOUNT =		EvanPurkhiser
GH_PROJECT =		keyfinder-cli
GH_TAGNAME =		v1.1.5

CATEGORIES =		audio

MAINTAINER =		Raphael Graf <r@undefined.ch>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c fftw3
WANTLIB += keyfinder m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		audio/libkeyfinder \
			graphics/ffmpeg

NO_TEST =		Yes

.include <bsd.port.mk>
