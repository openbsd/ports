# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:55 sthen Exp $

COMMENT =	HTTP Cookie jars

DISTNAME =	HTTP-Cookies-6.04
CATEGORIES =	www

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Message>=6.0

TEST_DEPENDS +=	www/p5-URI

.include <bsd.port.mk>
