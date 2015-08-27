# $OpenBSD: Makefile,v 1.7 2015/08/27 07:08:05 benoit Exp $

COMMENT =	helps validate CGI::Application run modes

MODULES =	cpan
DISTNAME =	CGI-Application-Plugin-ValidateRM-2.5
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Data-FormValidator \
			www/p5-CGI-Application \
			www/p5-HTML-FillInForm

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
