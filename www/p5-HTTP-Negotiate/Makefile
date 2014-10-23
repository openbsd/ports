# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:28:39 nigel Exp $

COMMENT =	choose a variant to serve

DISTNAME =	HTTP-Negotiate-6.01
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTTP-Message>=6.0

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
