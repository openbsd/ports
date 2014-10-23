# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:24:21 nigel Exp $

COMMENT =	HTTP Cookie jars

DISTNAME =	HTTP-Cookies-6.01
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Message>=6.0
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
