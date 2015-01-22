# $OpenBSD: Makefile,v 1.8 2015/01/22 17:47:51 naddy Exp $

COMMENT=	.bin/.cue to .iso CD image converter

DISTNAME=	bchunk-1.2.0
CATEGORIES=	sysutils
HOMEPAGE=	http://hes.iki.fi/bchunk/

MAINTAINER=	Dave Watson <dave@elephantride.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bchunk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
