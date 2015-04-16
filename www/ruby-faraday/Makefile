# $OpenBSD: Makefile,v 1.1.1.1 2015/04/16 17:29:42 sebastia Exp $

COMMENT =	HTTP/REST API client library

DISTNAME =	faraday-0.9.1
CATEGORIES =	www
HOMEPAGE =	https://github.com/lostisland/faraday
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-multipart-post,${MODRUBY_FLAVOR}>=1.2,<3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
