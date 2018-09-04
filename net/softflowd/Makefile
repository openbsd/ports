# $OpenBSD: Makefile,v 1.12 2018/09/04 12:46:19 espie Exp $

COMMENT=	flow-based network traffic analyser

DISTNAME=	softflowd-0.9.9
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	https://code.google.com/p/softflowd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=softflowd/}

WANTLIB=	c pcap

CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
