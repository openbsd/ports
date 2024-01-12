COMMENT =	Faraday 2.x FaradayMiddleware::FollowRedirects

DISTNAME =	faraday-follow_redirects-0.3.0
CATEGORIES =	www
HOMEPAGE =	https://github.com/tisba/faraday-follow-redirects
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		www/ruby-faraday,${MODRUBY_FLAVOR}>=1,<3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
