# $OpenBSD: Makefile,v 1.18 2013/03/11 11:35:50 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	2
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
