# $OpenBSD: Makefile,v 1.35 2019/07/12 20:47:04 sthen Exp $

COMMENT=	collection of C routines to decode MPEG movies

DISTNAME=	mpeg_lib-1.3.1
PKGNAME=	${DISTNAME:S/_/-/}
REVISION =	1
SHARED_LIBS=	mpeg	13.1
CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	OPTIMIZE="${CFLAGS}"

MAKE_FLAGS=	SHLIB=libmpeg.so.${LIBmpeg_VERSION}

do-test:
	@cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC} ./mpegtest -checksum test.mpg

.include <bsd.port.mk>
