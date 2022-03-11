COMMENT =		libsass wrapper for ruby

DISTNAME =		sassc-2.4.0
CATEGORIES =		www

HOMEPAGE =		https://github.com/sass/sassc-ruby

# MIT
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby gem ext

WANTLIB =		${COMPILER_LIBCXX}
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.9,<2.0

.include <bsd.port.mk>
