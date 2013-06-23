# $OpenBSD: Makefile,v 1.11 2013/06/23 19:35:27 jasper Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-1.6.7
CATEGORIES =	www

HOMEPAGE =	https://github.com/rest-client/rest-client

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# needs webmock, which needs crack
#MODRUBY_TEST =	rake rspec
NO_TEST=	Yes

.include <bsd.port.mk>
