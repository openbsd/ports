# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:55 sthen Exp $

COMMENT =	easy config file management

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Application-Plugin-ConfigAuto-1.33
CATEGORIES =	www
REVISION =	0

# perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Config-Auto \
			www/p5-CGI-Application

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
