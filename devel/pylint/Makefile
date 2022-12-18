COMMENT =		lint-like code checker for Python code

# py-astroid and pylint usually need keeping in-sync
MODPY_EGG_VERSION =	2.15.9
DISTNAME=		pylint-${MODPY_EGG_VERSION}
PKGNAME =		pylint3-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://www.pylint.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-dill${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR} \
			devel/py-astroid${MODPY_FLAVOR}>=2.12.12,<=2.14.0 \
			devel/py-isort${MODPY_FLAVOR}<6 \
			devel/py-mccabe${MODPY_FLAVOR}<0.8 \
			textproc/py-tomli${MODPY_FLAVOR} \
			textproc/py-tomlkit${MODPY_FLAVOR}

# not in pypi distfile
NO_TEST =		Yes
#TEST_DEPENDS =		devel/py-logilab-common${MODPY_FLAVOR}>=1.3.0 \
#			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
