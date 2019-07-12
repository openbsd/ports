# $OpenBSD: Makefile,v 1.4 2019/07/12 21:02:29 sthen Exp $

COMMENT =	HTTP/REST API client library

DISTNAME =	faraday-0.13.1
CATEGORIES =	www
HOMEPAGE =	https://github.com/lostisland/faraday
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-multipart-post,${MODRUBY_FLAVOR}>=1.2,<3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
