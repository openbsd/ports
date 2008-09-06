# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 09:53:01 simon Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
DISTNAME =	Test-HTML-Tidy-1.00
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
