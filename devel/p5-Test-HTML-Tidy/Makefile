# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT =	Test::More-style wrapper around HTML::Tidy

MODULES =	cpan
DISTNAME =	Test-HTML-Tidy-1.00
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	www/p5-HTML-Tidy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
