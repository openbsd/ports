# $OpenBSD: Makefile,v 1.7 2015/08/27 07:14:07 benoit Exp $

COMMENT =	easy config file management

MODULES =	cpan
DISTNAME =	CGI-Application-Plugin-ConfigAuto-1.33
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Config-Auto \
			www/p5-CGI-Application

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
