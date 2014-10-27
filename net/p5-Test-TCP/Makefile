# $OpenBSD: Makefile,v 1.5 2014/10/27 19:13:05 gonzalo Exp $

COMMENT =		testing TCP program

MODULES =		cpan
DISTNAME =		Test-TCP-2.06
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.14
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
