V =		0.0.20230225
COMMENT =	SDL2 audio decoding, resampling and mixing library
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	sdl2-audiolib-${V}
CATEGORIES =	audio

SHARED_LIBS +=	SDL_audiolib		0.0

GH_ACCOUNT =	realnc
GH_PROJECT =	SDL_audiolib
GH_COMMIT =	b2df2dfeddc692caa01fd1e1769f59b285912b87

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC SDL2 fmt m modplug mpcdec mpg123
WANTLIB += openmpt opusfile samplerate sndfile soxr vorbisfile
WANTLIB += xmp

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/flac \
		audio/libopenmpt \
		audio/libmodplug \
		audio/libsoxr \
		audio/libxmp \
		audio/mpg123 \
		audio/musepack \
		audio/opusfile \
		devel/fmt \
		devel/sdl2

CONFIGURE_ARGS =	-DUSE_DEC_FLUIDSYNTH=OFF \
			-DUSE_DEC_BASSMIDI=OFF \
			-DUSE_DEC_WILDMIDI=OFF \
			-DUSE_DEC_ADLMIDI=OFF \
			-DWITH_SYSTEM_FMTLIB=ON

.include <bsd.port.mk>
