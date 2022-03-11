COMMENT =	ruby library for automating compilation of native libraries

DISTNAME =	ffi-compiler-1.0.1
CATEGORIES =	devel

HOMEPAGE=	https://github.com/ffi/ffi-compiler

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Apache 2
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

WANTLIB =	ffi

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-ffi,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
