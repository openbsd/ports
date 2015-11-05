# $OpenBSD: Makefile,v 1.6 2015/11/05 09:57:26 benoit Exp $

COMMENT =		testing TCP program

MODULES =		cpan
DISTNAME =		Test-TCP-2.14
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.29
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
