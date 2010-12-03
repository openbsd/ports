# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT =	easy DBI access

MODULES =	cpan

DISTNAME =	CGI-Application-Plugin-DBH-4.00
REVISION =	0
CATEGORIES =	databases www

# perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild
USE_GROFF =		Yes

RUN_DEPENDS =		databases/p5-DBI \
			www/p5-CGI-Application

REGRESS_DEPENDS =	databases/p5-DBD-Mock

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
