# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:13 naddy Exp $

COMMENT = 		MVC web framework for perl

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		CGI-Application-4.50
REVISION =		1
CATEGORIES =		www
HOMEPAGE =		http://www.cgi-app.org/

MAINTAINER =		Ian McWilliam <kaosagnt@gmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Class-ISA \
			www/p5-CGI-PSGI \
			www/p5-HTML-Template

.include <bsd.port.mk>
