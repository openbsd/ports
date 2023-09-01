COMMENT =		lightweight libcurl wrapper

DISTNAME =		ethon-0.15.0

CATEGORIES =		www
HOMEPAGE =		https://github.com/typhoeus/ethon
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR},>=1.15

.include <bsd.port.mk>
