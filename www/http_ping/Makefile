# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:42 espie Exp $

COMMENT=	HTTP latency performance testing client

DISTNAME=	http_ping_29jun2005
PKGNAME=	http_ping-20050629
REVISION=	0
CATEGORIES=	www benchmarks

HOMEPAGE=	http://www.acme.com/software/http_ping/

MASTER_SITES=	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl 

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_FILE=	${FILESDIR}/Makefile.bsd

WRKDIST=	${WRKDIR}/http_ping

.include <bsd.port.mk>
