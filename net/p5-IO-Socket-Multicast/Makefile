# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:51 naddy Exp $

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	5
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
