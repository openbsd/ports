# $OpenBSD: Makefile,v 1.23 2013/03/11 11:44:42 espie Exp $

COMMENT=	multiprocessing HTTP performance testing client

DISTNAME=	http_load-12mar2006
PKGNAME=	http_load-20060312
REVISION=	1
CATEGORIES=	www benchmarks
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.acme.com/software/http_load/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl 

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile.bsd

.include <bsd.port.mk>
