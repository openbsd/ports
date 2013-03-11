# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:44 espie Exp $

COMMENT =	helps validate CGI::Application run modes

MODULES =	cpan
DISTNAME =	CGI-Application-Plugin-ValidateRM-2.3
REVISION =	0
CATEGORIES =	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Data-FormValidator \
			www/p5-CGI-Application \
			www/p5-HTML-FillInForm

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
