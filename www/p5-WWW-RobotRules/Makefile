# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:31:07 nigel Exp $

COMMENT =	database of robots.txt-derived permissions

DISTNAME =	WWW-RobotRules-6.02
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
