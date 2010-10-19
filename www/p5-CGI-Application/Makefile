# $OpenBSD: Makefile,v 1.7 2010/10/19 08:02:54 espie Exp $

COMMENT = 		MVC web framework for perl

MODULES =		cpan
DISTNAME =		CGI-Application-4.31
CATEGORIES =		www
HOMEPAGE =		http://www.cgi-app.org/
USE_GROFF =	Yes

MAINTAINER =		Ian McWilliam <kaosagnt@tpg.com.au>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild
RUN_DEPENDS =		::www/p5-HTML-Template

.include <bsd.port.mk>
