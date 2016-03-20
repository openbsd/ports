# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:37 naddy Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-HTML-Tidy-1.00
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
