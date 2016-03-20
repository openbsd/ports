# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:19 naddy Exp $

COMMENT =	HTTP Cookie jars

DISTNAME =	HTTP-Cookies-6.01
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Message>=6.0
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
