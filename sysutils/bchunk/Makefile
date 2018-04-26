# $OpenBSD: Makefile,v 1.9 2018/04/26 16:42:42 bcallah Exp $

COMMENT=	.bin/.cue to .iso CD image converter

DISTNAME=	bchunk-1.2.2
CATEGORIES=	sysutils
HOMEPAGE=	http://hes.iki.fi/bchunk/

MAINTAINER=	Dave Watson <dave@elephantride.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}" LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bchunk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
