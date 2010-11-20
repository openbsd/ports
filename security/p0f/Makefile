# $OpenBSD: Makefile,v 1.21 2010/11/20 17:22:44 espie Exp $

COMMENT=		passive OS fingerprinting tool

DISTNAME=		p0f-2.0.8
REVISION =		1
EXTRACT_SUFX=		.tgz
CATEGORIES=     	security net

HOMEPAGE=		http://lcamtuf.coredump.cx/p0f.shtml

MAINTAINER=		Rui Reis <rui@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=	http://lcamtuf.coredump.cx/p0f/

WRKDIST=	${WRKDIR}/p0f

MAKE_FILE=	${WRKSRC}/mk/OpenBSD
MAKE_FLAGS=	CC=${CC}
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
