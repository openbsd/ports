# $OpenBSD: Makefile,v 1.25 2019/07/12 20:50:46 sthen Exp $

COMMENT=	multiprocessing HTTP performance testing client

DISTNAME =	http_load-14aug2014
PKGNAME =	http_load-20140814
CATEGORIES=	www benchmarks
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.acme.com/software/http_load/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB =		c crypto ssl

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile.bsd

.include <bsd.port.mk>
