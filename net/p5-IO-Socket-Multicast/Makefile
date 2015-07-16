# $OpenBSD: Makefile,v 1.21 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	5
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
