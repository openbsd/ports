# $OpenBSD: Makefile,v 1.11 2014/07/23 20:06:13 naddy Exp $

COMMENT = 		MVC web framework for perl

MODULES =		cpan
DISTNAME =		CGI-Application-4.50
REVISION =		0
CATEGORIES =		www
HOMEPAGE =		http://www.cgi-app.org/

MAINTAINER =		Ian McWilliam <kaosagnt@tpg.com.au>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Class-ISA \
			www/p5-CGI-PSGI \
			www/p5-HTML-Template

.include <bsd.port.mk>
