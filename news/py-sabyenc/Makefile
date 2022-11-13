COMMENT =		yEnc Module for Python modified for SABnzbd

MODPY_EGG_VERSION =	5.4.4
EPOCH =			0
DISTNAME =		sabyenc3-${MODPY_EGG_VERSION}
PKGNAME =		py-sabyenc-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		news

HOMEPAGE =		https://github.com/sabnzbd/sabyenc

# LGPLv3
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
