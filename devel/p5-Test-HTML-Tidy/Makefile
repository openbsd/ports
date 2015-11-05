# $OpenBSD: Makefile,v 1.7 2015/11/05 19:08:58 jca Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
DISTNAME =	Test-HTML-Tidy-1.00
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
