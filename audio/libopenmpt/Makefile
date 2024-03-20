COMMENT =	OpenMPT based module player library and command-line player

DISTNAME =	libopenmpt-0.7.5+release.autotools
PKGNAME =	${DISTNAME:S/+release.autotools//}

SHARED_LIBS +=  openmpt              0.2      # 4.4

CATEGORIES =	audio devel

HOMEPAGE =	https://lib.openmpt.org/libopenmpt/

# BSD
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC c m mp3lame mpg123 ogg opus
WANTLIB += portaudio sndfile sndio vorbis vorbisenc vorbisfile
WANTLIB += z

SITES =		https://lib.openmpt.org/files/libopenmpt/src/

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/flac \
		audio/lame \
		audio/libsndfile \
		audio/libvorbis \
		audio/mpg123 \
		audio/portaudio-svn

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --without-portaudiocpp

CXXFLAGS +=	-D_LIBCPP_HAS_C11_FEATURES \
		-DMPG123_NO_LARGENAME

NO_TEST =	Yes

.include <bsd.port.mk>
