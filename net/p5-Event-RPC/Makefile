# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:31 sthen Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Event-RPC-1.10
CATEGORIES =	net devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
