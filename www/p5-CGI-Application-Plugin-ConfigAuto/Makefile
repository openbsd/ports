# $OpenBSD: Makefile,v 1.6 2015/01/21 14:42:32 sthen Exp $

COMMENT =	easy config file management

MODULES =	cpan
DISTNAME =	CGI-Application-Plugin-ConfigAuto-1.30
REVISION =	0
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Config-Auto \
			www/p5-CGI-Application

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
