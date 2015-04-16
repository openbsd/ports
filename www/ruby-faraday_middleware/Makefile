# $OpenBSD: Makefile,v 1.1.1.1 2015/04/16 17:31:06 sebastia Exp $

COMMENT =	middleware for Ruby Faraday

DISTNAME =	faraday_middleware-0.9.1
CATEGORIES =	www
HOMEPAGE =	https://github.com/lostisland/faraday_middleware
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.7.4,<0.10.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
