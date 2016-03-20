# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:57 naddy Exp $

COMMENT =		testing TCP program

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Test-TCP-2.14
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.29
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
