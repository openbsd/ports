# $OpenBSD: Makefile,v 1.1.1.1 2009/02/06 22:09:10 simon Exp $

COMMENT =	easy config file management

MODULES =	cpan
DISTNAME =	CGI-Application-Plugin-ConfigAuto-1.30
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		::devel/p5-Config-Auto \
			::www/p5-CGI-Application

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
