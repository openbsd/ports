# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:35 sthen Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Event-RPC-1.10
CATEGORIES =	net devel

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
