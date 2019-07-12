# $OpenBSD: Makefile,v 1.5 2019/07/12 21:02:29 sthen Exp $

COMMENT =	middleware for Ruby Faraday

DISTNAME =	faraday_middleware-0.12.2
CATEGORIES =	www
HOMEPAGE =	https://github.com/lostisland/faraday_middleware
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.7.4,<1.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
