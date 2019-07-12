# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:42 sthen Exp $

COMMENT =		testing TCP program

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Test-TCP-2.19
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.29
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
