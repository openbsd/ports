# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:43 sthen Exp $

COMMENT=	SMTP benchmark to measure throughput of an MTA

DISTNAME=	smtp-benchmark-1.0.4
REVISION=	3

CATEGORIES=    	benchmarks mail

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread

MASTER_SITES=	https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

.include <bsd.port.mk>
