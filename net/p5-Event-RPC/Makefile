# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:50 espie Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.01
REVISION=	0
CATEGORIES=	net devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
