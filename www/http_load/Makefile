COMMENT=	multiprocessing HTTP performance testing client

DISTNAME=	http_load-09Mar2016
PKGNAME=	http_load-20160309
CATEGORIES=	www benchmarks
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://www.acme.com/software/http_load/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto ssl

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile.bsd

.include <bsd.port.mk>
