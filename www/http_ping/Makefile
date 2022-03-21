COMMENT=	HTTP latency performance testing client

DISTNAME=	http_ping_09Mar2016
PKGNAME=	http_ping-20160309
CATEGORIES=	www benchmarks

HOMEPAGE=	https://www.acme.com/software/http_ping/

MASTER_SITES=	${HOMEPAGE}

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto ssl

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_FILE=	${FILESDIR}/Makefile.bsd

WRKDIST=	${WRKDIR}/http_ping

.include <bsd.port.mk>
