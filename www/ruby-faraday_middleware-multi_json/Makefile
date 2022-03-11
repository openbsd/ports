COMMENT =	Faraday response parser using MultiJson

DISTNAME =	faraday_middleware-multi_json-0.0.6
CATEGORIES =	www
HOMEPAGE =	https://www.github.com/denro/faraday_middleware-multi_json
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		converters/ruby-multi_json,${MODRUBY_FLAVOR} \
			www/ruby-faraday_middleware,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
