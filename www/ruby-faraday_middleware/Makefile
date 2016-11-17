# $OpenBSD: Makefile,v 1.3 2016/11/17 09:34:02 sebastia Exp $

COMMENT =	middleware for Ruby Faraday

DISTNAME =	faraday_middleware-0.10.1
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
