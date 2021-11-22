# $OpenBSD: Makefile,v 1.5 2021/11/22 20:53:22 thfr Exp $

COMMENT =	Ogg Theora Video Decoder Library

# stable release binary packages are only available as part of FNA
# Note that not every update of FNA releases necessarily updates libtheorafile
V =	20210403
FNA =	21.11
DISTNAME =	libtheorafile-${V}{FNA-${FNA:S/.//}}
PKGNAME =	libtheorafile-${V}

SHARED_LIBS =	theorafile	1.1	# from FNA 21.11

CATEGORIES =	multimedia
HOMEPAGE =	https://github.com/FNA-XNA/Theorafile
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += m

MASTER_SITES = https://github.com/FNA-XNA/FNA/releases/download/${FNA}/
EXTRACT_SUFX = .zip

MAKE_ENV =	LIBtheorafile_VERSION=${LIBtheorafile_VERSION}
MAKE_FLAGS =	TARGET=so.${LIBtheorafile_VERSION}

USE_GMAKE =	Yes

# Comes with target 'test' to build binary 'theorafile-test' that can play an
# Ogg Theora (.ogv) file. Doesn't come with an example video file, however.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/FNA/lib/Theorafile

do-install:
	${INSTALL_DATA} ${WRKSRC}/theorafile.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libtheorafile.so.${LIBtheorafile_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
