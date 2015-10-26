# $OpenBSD: Makefile,v 1.2 2015/10/26 11:31:16 sebastia Exp $

COMMENT =	HTTP/REST API client library

DISTNAME =	faraday-0.9.2
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
