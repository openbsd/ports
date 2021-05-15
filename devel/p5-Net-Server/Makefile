# $OpenBSD: Makefile,v 1.25 2021/05/15 15:29:35 giovanni Exp $

COMMENT =	extensible framework for Perl server engines

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-Server-2.009
CATEGORIES =	devel net
REVISION =	1

# perl
PERMIT_PACKAGE =	Yes

MODCPAN_EXAMPLES =	Yes
RUN_DEPENDS =	net/p5-IO-Socket-INET6
TEST_DEPENDS =	devel/p5-IO-Multiplex

.include <bsd.port.mk>
