# $OpenBSD: Makefile,v 1.23 2019/07/12 21:02:24 sthen Exp $

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	5
CATEGORIES=	net

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
