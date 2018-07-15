# $OpenBSD: Makefile,v 1.8 2018/07/15 09:03:57 gonzalo Exp $

COMMENT =		testing TCP program

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Test-TCP-2.19
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.29
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
