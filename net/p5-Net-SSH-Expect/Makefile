# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:36 sthen Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
REVISION =	2
CATEGORIES =	net
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Expect

.include <bsd.port.mk>
