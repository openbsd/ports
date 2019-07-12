# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:49 sthen Exp $

COMMENT = 		MVC web framework for perl

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		CGI-Application-4.61
CATEGORIES =		www
HOMEPAGE =		http://www.cgi-app.org/

MAINTAINER =		Ian McWilliam <kaosagnt@gmail.com>

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Class-ISA \
			devel/p5-Module-Build \
			www/p5-CGI>=4.21 \
			www/p5-CGI-PSGI>=0.09 \
			www/p5-HTML-Template

.include <bsd.port.mk>
