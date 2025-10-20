COMMENT =		Python bindings for the AWS Common Runtime

MODPY_DISTV =		0.27.5
PKGNAME =		py-awscrt-${MODPY_DISTV}
DISTNAME =		awscrt-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/awslabs/aws-crt-python
MAINTAINER =		Joel Knight <knight.joel@gmail.com>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# various failures with gcc (invalid flags, and "Could NOT find Threads")
COMPILER =		base-clang
COMPILER_LANGS =	c

BUILD_DEPENDS +=	devel/cmake/core

# aws-lc <https://github.com/aws/aws-lc>, which is vendored into the
# Python CRT bindings, isn't compatible with exec-only.
USE_NOEXECONLY =	Yes

NO_TEST =		Yes

# pass in CONFIGURE_ARGS defined by the cmake module
MAKE_ENV +=		CMAKE_ARGS="${CONFIGURE_ARGS}"

do-configure:
	# empty to avoid running cmake.port.mk do-configure

# XXX the cmake module isn't actually used in this port though? XXX

do-build:
	@${MODPY_BUILD_TARGET}

do-install:
	@${MODPY_INSTALL_TARGET}

.include <bsd.port.mk>
