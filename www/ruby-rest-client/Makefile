# $OpenBSD: Makefile,v 1.14 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-1.6.7
REVISION =	2
CATEGORIES =	www

HOMEPAGE =	https://github.com/rest-client/rest-client

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# needs webmock, which needs crack
#MODRUBY_TEST =	rake rspec
NO_TEST=	Yes

RUN_DEPENDS =	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
