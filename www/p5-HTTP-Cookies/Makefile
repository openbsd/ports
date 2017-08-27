# $OpenBSD: Makefile,v 1.3 2017/08/27 21:56:41 nigel Exp $

COMMENT =	HTTP Cookie jars

DISTNAME =	HTTP-Cookies-6.04
CATEGORIES =	www

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Message>=6.0

TEST_DEPENDS +=	www/p5-URI

.include <bsd.port.mk>
