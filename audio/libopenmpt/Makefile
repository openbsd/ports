# $OpenBSD: Makefile,v 1.10 2020/07/28 18:29:49 fcambus Exp $

COMMENT =	OpenMPT based module player library and command-line player

DISTNAME =	libopenmpt-0.5.1+release.autotools
PKGNAME =	${DISTNAME:S/+release.autotools//}

SHARED_LIBS +=	openmpt	0.1	# 2.2

CATEGORIES =	audio devel

HOMEPAGE =	https://lib.openmpt.org/libopenmpt/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} FLAC c m mpg123 ogg portaudio sndfile
WANTLIB +=	sndio vorbis vorbisenc vorbisfile z

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
