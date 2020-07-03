# $OpenBSD: Makefile,v 1.4 2020/07/03 21:46:03 sthen Exp $

COMMENT =	choose a variant to serve

DISTNAME =	HTTP-Negotiate-6.01
CATEGORIES =	www
CPAN_AUTHOR =	GAAS
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Message>=6.0

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
