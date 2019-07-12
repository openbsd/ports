# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:58 sthen Exp $

COMMENT =	framework to automate HTML forms

DISTNAME =	WWW-Mechanize-FormFiller-0.12

CATEGORIES =	www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Data-Random>=0.05 \
			www/p5-HTML-Form \
			www/p5-HTML-Tagset
TEST_DEPENDS =		devel/p5-Test-Inline>0.15 \
			devel/p5-Test-MockObject

PKG_ARCH =		*

.include <bsd.port.mk>
