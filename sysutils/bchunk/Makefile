# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:39 sthen Exp $

COMMENT=	.bin/.cue to .iso CD image converter

DISTNAME=	bchunk-1.2.2
CATEGORIES=	sysutils
HOMEPAGE=	http://hes.iki.fi/bchunk/
REVISION=	0

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}" LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bchunk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
