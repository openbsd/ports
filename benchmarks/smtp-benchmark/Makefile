# $OpenBSD: Makefile,v 1.1.1.1 2006/10/29 11:34:23 mbalmer Exp $

COMMENT=	"SMTP benchmark to measure throughput of an MTA"

DISTNAME=	smtp-benchmark-1.0.4

CATEGORIES=    	bechmark mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-benchmark/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/smtp-benchmark/
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

.include <bsd.port.mk>
