COMMENT =	Ruby binding for the argon2 password hashing algorithm

DISTNAME =	argon2-2.0.3
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/technion/ruby-argon2

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/ruby

BUILD_DEPENDS = devel/gmake \
		${RUN_DEPENDS}

RUN_DEPENDS =	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.14,<2.0 \
		devel/ruby-ffi-compiler,${MODRUBY_FLAVOR}>=1.0,<2.0


CONFIGURE_STYLE =	ruby gem ext
MAKE_ENV = 	MAKE=gmake

.include <bsd.port.mk>
