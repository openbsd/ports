# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:51 naddy Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Event-RPC-1.08
CATEGORIES =	net devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
