# $OpenBSD: Makefile,v 1.20 2015/01/21 06:23:34 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	4
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
