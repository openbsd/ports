
COMMENT =		multiprocess server framework for Ruby

DISTNAME =		serverengine-2.3.1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/fluent/serverengine

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		sysutils/ruby-sigdump,${MODRUBY_FLAVOR}>=0.2.2,<0.3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
