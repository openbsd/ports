# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:56 sthen Exp $

COMMENT =	Ogg Theora Video Decoder Library

# stable release binary packages are only available as part of FNA
# Note that not every update of FNA releases necessarily updates libtheorafile
V =	20180401
FNA =	18.04
DISTNAME =	libtheorafile-${V}{FNA-${FNA:S/.//}}
PKGNAME =	libtheorafile-${V}
REVISION =	0

SHARED_LIBS =	theorafile	1.0	# from FNA 18.04

CATEGORIES =	multimedia
HOMEPAGE =	https://github.com/FNA-XNA/Theorafile
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += ogg theoradec vorbis

MASTER_SITES = https://github.com/FNA-XNA/FNA/releases/download/${FNA}/
EXTRACT_SUFX = .zip

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		multimedia/libtheora

MAKE_ENV =	LIBtheorafile_VERSION=${LIBtheorafile_VERSION}
MAKE_FLAGS =	TARGET=so.${LIBtheorafile_VERSION}

# Comes with target 'test' to build binary 'theorafile-test' that can play an
# Ogg Theora (.ogv) file. Doesn't come with an example video file, however.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/FNA/lib/Theorafile

do-install:
	${INSTALL_DATA} ${WRKSRC}/theorafile.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libtheorafile.so.${LIBtheorafile_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
