# $OpenBSD: Makefile,v 1.6 2015/01/21 14:05:45 sthen Exp $

COMMENT =	easy DBI access

MODULES =	cpan

DISTNAME =	CGI-Application-Plugin-DBH-4.00
REVISION =	0
CATEGORIES =	databases www

# perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		databases/p5-DBI \
			www/p5-CGI-Application

TEST_DEPENDS =	databases/p5-DBD-Mock

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
