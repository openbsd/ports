COMMENT =	HTTP/REST API client library

DISTNAME =	faraday-2.12.2
CATEGORIES =	www
HOMEPAGE =	https://github.com/lostisland/faraday
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-faraday-net_http,${MODRUBY_FLAVOR}>=2,<3.5

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
