BROKEN-riscv64 =	needs riscv_vector.h

COMMENT =		C implementations of functions for use within SABnzbd

MODPY_DISTV =	8.2.5
EPOCH =			0
DISTNAME =		sabctools-${MODPY_DISTV}
PKGNAME =		py-sabctools-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		news

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

HOMEPAGE =		https://github.com/sabnzbd/sabctools

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# C++11
COMPILER =		base-clang ports-gcc ports-clang

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# No test suites in pypi tarball
NO_TEST =	Yes

.include <bsd.port.mk>
