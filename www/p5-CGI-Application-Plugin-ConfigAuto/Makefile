# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:13 naddy Exp $

COMMENT =	easy config file management

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Application-Plugin-ConfigAuto-1.33
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Config-Auto \
			www/p5-CGI-Application

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
