COMMENT =		common base representation of Python source code

# py-astroid and pylint usually need keeping in-sync
MODPY_EGG_VERSION =	2.12.13
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# not in pypi distro
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-lazy-object-proxy${MODPY_FLAVOR}>=1.4 \
			devel/py-wrapt${MODPY_FLAVOR}<2

.include <bsd.port.mk>
