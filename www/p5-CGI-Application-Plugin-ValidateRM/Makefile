# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:49 sthen Exp $

COMMENT =	helps validate CGI::Application run modes

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Application-Plugin-ValidateRM-2.5
CATEGORIES =	www
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Data-FormValidator \
			www/p5-CGI-Application \
			www/p5-HTML-FillInForm

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
