# $OpenBSD: Makefile,v 1.11 2018/01/11 19:27:08 rpe Exp $

COMMENT=	flow-based network traffic analyser

DISTNAME=	softflowd-0.9.9
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	https://code.google.com/p/softflowd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=softflowd/}

WANTLIB=	c pcap

CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
