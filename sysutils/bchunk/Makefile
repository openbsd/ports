# $OpenBSD: Makefile,v 1.12 2019/11/08 10:27:56 fcambus Exp $

COMMENT=	.bin/.cue to .iso CD image converter

DISTNAME=	bchunk-1.2.2
CATEGORIES=	sysutils
HOMEPAGE=	http://he.fi/bchunk/
REVISION=	1

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://he.fi/bchunk/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}" LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bchunk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
