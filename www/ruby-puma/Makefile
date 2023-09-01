COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-6.3.1
CATEGORIES =		www

HOMEPAGE =		https://puma.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

RUN_DEPENDS =		devel/ruby-nio4r,${MODRUBY_FLAVOR}>=2,<3
BUILD_DEPENDS =		${RUN_DEPENDS}

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
