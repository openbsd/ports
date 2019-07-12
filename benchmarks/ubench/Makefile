# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:43 sthen Exp $

COMMENT=	Unix benchmark utility

DISTNAME=	ubench-0.32
CATEGORIES=	benchmarks
REVISION=	1

HOMEPAGE=	http://www.phystech.com/download/ubench.html
MASTER_SITES=	http://www.phystech.com/ftp/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	simple

ALL_TARGET=	default
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ubench ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ubench.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
