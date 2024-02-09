ONLY_FOR_ARCHS= i386 amd64

COMMENT=	improved version of afl
GH_ACCOUNT =	AFLplusplus
GH_PROJECT =	AFLplusplus
GH_TAGNAME =	v4.10c
PKGNAME =	afl++-${GH_TAGNAME:S/v//}
CATEGORIES=	devel

HOMEPAGE=	https://aflplus.plus/
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB =		${COMPILER_LIBCXX} c m
USE_GMAKE=		Yes

MODULES =		lang/clang
RUN_DEPENDS =		lang/gawk

MAKE_FLAGS =		LLVM_CONFIG=llvm-config-${MODCLANG_VERSION} \
			NO_PYTHON=1
FAKE_FLAGS=		PREFIX="${TRUEPREFIX}"
TEST_TARGET=		tests

.include <bsd.port.mk>
