COMMENT =	community-developed python astronomy tools

MODPY_EGG_VERSION =	4.0.5
REVISION =	0

DISTNAME =	astropy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	astro

HOMEPAGE =	https://astropy.org

# BSD license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

BUILD_DEPENDS =		devel/py-wheel${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
