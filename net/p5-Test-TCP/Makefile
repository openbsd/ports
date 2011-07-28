# $OpenBSD: Makefile,v 1.3 2011/07/28 11:48:13 jasper Exp $

COMMENT =		testing TCP program

MODULES =		cpan
DISTNAME =		Test-TCP-1.13
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

RUN_DEPENDS =		devel/p5-Test-SharedFork>=0.14
BUILD_DEPENDS = 	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
