# $OpenBSD: Makefile,v 1.14 2015/12/03 21:24:29 sthen Exp $

COMMENT=	SMTP benchmark to measure throughput of an MTA

DISTNAME=	smtp-benchmark-1.0.4
REVISION=	3

CATEGORIES=    	benchmarks mail

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pthread

MASTER_SITES=	https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

.include <bsd.port.mk>
