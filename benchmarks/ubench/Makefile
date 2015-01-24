# $OpenBSD: Makefile,v 1.9 2015/01/24 12:20:38 schwarze Exp $

COMMENT=	Unix benchmark utility

DISTNAME=	ubench-0.32
CATEGORIES=	benchmarks
REVISION=	0

HOMEPAGE=	http://www.phystech.com/download/ubench.html
MASTER_SITES=	http://www.phystech.com/ftp/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	simple

ALL_TARGET=	default
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ubench ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ubench.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
