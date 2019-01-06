# $OpenBSD: Makefile,v 1.15 2019/01/06 10:45:00 steven Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Event-RPC-1.10
CATEGORIES =	net devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
