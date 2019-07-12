# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:39 sthen Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
REVISION =	1
CATEGORIES =	net
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Expect

.include <bsd.port.mk>
