# $OpenBSD: Makefile,v 1.7 2015/08/22 12:40:06 benoit Exp $

COMMENT =	easy DBI access

MODULES =	cpan

DISTNAME =	CGI-Application-Plugin-DBH-4.04
CATEGORIES =	databases www

# perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-DBI \
		www/p5-CGI-Application

TEST_DEPENDS =	databases/p5-DBD-Mock \
		devel/p5-Test-MockObject

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
