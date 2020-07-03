# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:34 sthen Exp $

COMMENT =	easy DBI access

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	CGI-Application-Plugin-DBH-4.04
CATEGORIES =	databases www
REVISION =	0

# perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	databases/p5-DBI \
		www/p5-CGI-Application

TEST_DEPENDS =	databases/p5-DBD-Mock \
		devel/p5-Test-MockObject

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
