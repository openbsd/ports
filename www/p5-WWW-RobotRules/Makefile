# $OpenBSD: Makefile,v 1.4 2020/07/03 21:46:07 sthen Exp $

COMMENT =	database of robots.txt-derived permissions

DISTNAME =	WWW-RobotRules-6.02
CATEGORIES =	www
CPAN_AUTHOR =	GAAS
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
