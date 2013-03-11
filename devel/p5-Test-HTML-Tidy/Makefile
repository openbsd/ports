# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:22 espie Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
DISTNAME =	Test-HTML-Tidy-1.00
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
