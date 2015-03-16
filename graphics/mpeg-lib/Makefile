# $OpenBSD: Makefile,v 1.33 2015/03/16 18:07:48 naddy Exp $

COMMENT=	collection of C routines to decode MPEG movies

DISTNAME=	mpeg_lib-1.3.1
PKGNAME=	${DISTNAME:S/_/-/}
REVISION =	1
SHARED_LIBS=	mpeg	13.1
CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	OPTIMIZE="${CFLAGS}"

MAKE_FLAGS=	SHLIB=libmpeg.so.${LIBmpeg_VERSION}

do-test:
	@cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC} ./mpegtest -checksum test.mpg

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
