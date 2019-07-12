# $OpenBSD: Makefile,v 1.2 2019/07/12 20:50:55 sthen Exp $

COMMENT =	minimalist HTTP user agent cookie jar

DISTNAME =	HTTP-CookieJar-0.008

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
