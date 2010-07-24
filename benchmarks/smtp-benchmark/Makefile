# $OpenBSD: Makefile,v 1.7 2010/07/24 07:55:26 ajacoutot Exp $

COMMENT=	SMTP benchmark to measure throughput of an MTA

DISTNAME=	smtp-benchmark-1.0.4
PKGNAME=	${DISTNAME}
REVISION=	1

CATEGORIES=    	benchmarks mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-benchmark/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

.include <bsd.port.mk>
