# $OpenBSD: Makefile,v 1.5 2019/11/21 10:36:32 sebastia Exp $

COMMENT =	HTTP/REST API client library

DISTNAME =	faraday-0.14.0
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
