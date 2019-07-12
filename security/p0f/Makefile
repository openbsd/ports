# $OpenBSD: Makefile,v 1.27 2019/07/12 20:49:06 sthen Exp $

COMMENT=		passive OS fingerprinting tool

DISTNAME=		p0f-2.0.8
REVISION =		2
EXTRACT_SUFX=		.tgz
CATEGORIES=     	security net

HOMEPAGE=		http://lcamtuf.coredump.cx/p0f.shtml

MAINTAINER=		Nigel Taylor <nigel@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap

MASTER_SITES=	http://lcamtuf.coredump.cx/p0f3/releases/old/2.x/

WRKDIST=	${WRKDIR}/p0f

MAKE_FILE=	${WRKSRC}/mk/OpenBSD
MAKE_FLAGS=	CC=${CC}

NO_TEST=	Yes

.include <bsd.port.mk>
