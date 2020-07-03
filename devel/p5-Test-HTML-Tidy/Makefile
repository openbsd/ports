# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:13 sthen Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-HTML-Tidy-1.00
REVISION =	2
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
