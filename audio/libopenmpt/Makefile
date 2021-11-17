# $OpenBSD: Makefile,v 1.23 2021/11/17 10:44:25 fcambus Exp $

COMMENT =	OpenMPT based module player library and command-line player

DISTNAME =	libopenmpt-0.5.13+release.autotools
PKGNAME =	${DISTNAME:S/+release.autotools//}

SHARED_LIBS +=	openmpt	0.1	# 2.2

CATEGORIES =	audio devel

HOMEPAGE =	https://lib.openmpt.org/libopenmpt/

# BSD
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC c m mpg123 ogg opus portaudio
WANTLIB += sndfile sndio vorbis vorbisenc vorbisfile z

MASTER_SITES =	https://lib.openmpt.org/files/libopenmpt/src/

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/flac \
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
