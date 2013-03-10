# $OpenBSD: Makefile,v 1.12 2013/03/10 23:04:44 espie Exp $

COMMENT=	SMTP benchmark to measure throughput of an MTA

DISTNAME=	smtp-benchmark-1.0.4
REVISION=	2

CATEGORIES=    	benchmarks mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-benchmark/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pthread

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

.include <bsd.port.mk>
