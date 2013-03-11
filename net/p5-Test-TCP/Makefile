# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:54 espie Exp $

COMMENT =		testing TCP program

MODULES =		cpan
DISTNAME =		Test-TCP-1.13
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.14
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
