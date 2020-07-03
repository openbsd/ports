# $OpenBSD: Makefile,v 1.3 2020/07/03 21:46:02 sthen Exp $

COMMENT =	minimalist HTTP user agent cookie jar

DISTNAME =	HTTP-CookieJar-0.008
REVISION =	0

CATEGORIES =	www

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Requires \
			www/p5-HTTP-Message \
			www/p5-URI

PKG_ARCH =		*

.include <bsd.port.mk>
