# $OpenBSD: Makefile,v 1.10 2014/05/18 21:25:15 bluhm Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.05
CATEGORIES=	net devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
