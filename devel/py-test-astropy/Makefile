COMMENT =	metapackage for testing machinery used by Astropy

MODPY_EGG_VERSION =	0.10.0

DISTNAME =	pytest-astropy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-astropy

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
NO_TEST =		Yes

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	devel/py-attrs${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		devel/py-test-arraydiff${MODPY_FLAVOR} \
		devel/py-test-astropy-header${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-doctestplus${MODPY_FLAVOR} \
		devel/py-test-filter-subpackage${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-test-openfiles${MODPY_FLAVOR} \
		devel/py-test-remotedata${MODPY_FLAVOR}

.include <bsd.port.mk>
