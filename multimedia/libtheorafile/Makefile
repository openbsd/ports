# $OpenBSD: Makefile,v 1.1.1.1 2018/02/22 07:54:51 bentley Exp $

COMMENT =	Ogg Theora Video Decoder Library

V =		20170905

DISTNAME =	libtheorafile-${V}

GH_ACCOUNT =	FNA-XNA
GH_PROJECT =	Theorafile
GH_COMMIT =	eb65cf7d4881dd3ca0bfd71e8ec2c54c71ffe4d2

SHARED_LIBS =	theorafile	0.0	# commit from 2017-09-05

CATEGORIES =	multimedia

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ogg theoradec vorbis

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		multimedia/libtheora

MAKE_ENV =	LIBtheorafile_VERSION=${LIBtheorafile_VERSION}
MAKE_FLAGS =	TARGET=so.${LIBtheorafile_VERSION}

# Comes with target 'test' to build binary 'theorafile-test' that can play an
# Ogg Theora (.ogv) file. Doesn't come with an example video file, however.
NO_TEST =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/theorafile.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libtheorafile.so.${LIBtheorafile_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
