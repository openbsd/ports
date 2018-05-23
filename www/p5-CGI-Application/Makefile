# $OpenBSD: Makefile,v 1.14 2018/05/23 19:01:39 bluhm Exp $

COMMENT = 		MVC web framework for perl

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		CGI-Application-4.61
CATEGORIES =		www
HOMEPAGE =		http://www.cgi-app.org/

MAINTAINER =		Ian McWilliam <kaosagnt@gmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Class-ISA \
			devel/p5-Module-Build \
			www/p5-CGI>=4.21 \
			www/p5-CGI-PSGI>=0.09 \
			www/p5-HTML-Template

.include <bsd.port.mk>
