# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:49 sthen Exp $

COMMENT=	flow-based network traffic analyser

DISTNAME=	softflowd-0.9.9
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	https://code.google.com/p/softflowd/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=softflowd/}

WANTLIB=	c pcap

CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
