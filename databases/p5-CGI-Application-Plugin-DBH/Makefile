# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:54 sthen Exp $

COMMENT =	easy DBI access

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	CGI-Application-Plugin-DBH-4.04
CATEGORIES =	databases www

# perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	databases/p5-DBI \
		www/p5-CGI-Application

TEST_DEPENDS =	databases/p5-DBD-Mock \
		devel/p5-Test-MockObject

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
