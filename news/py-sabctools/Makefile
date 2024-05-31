COMMENT =		C implementations of functions for use within SABnzbd

MODPY_EGG_VERSION =	8.2.3
EPOCH =			0
DISTNAME =		sabctools-${MODPY_EGG_VERSION}
PKGNAME =		py-sabctools-${MODPY_EGG_VERSION}

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

FLAVORS =		python3
FLAVOR =		python3

# No test suites in pypi tarball
NO_TEST =	Yes

.include <bsd.port.mk>
