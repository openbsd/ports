# $OpenBSD

COMMENT =		libsass wrapper for ruby

DISTNAME =		sassc-2.2.1
CATEGORIES =		www

HOMEPAGE =		https://github.com/sass/sassc-ruby

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.9

.include <bsd.port.mk>
