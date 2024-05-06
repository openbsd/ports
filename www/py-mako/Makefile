COMMENT =	super-fast templating language

MODPY_EGG_VERSION =	1.2.4
DISTNAME =		Mako-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
FIX_EXTRACT_PERMISSIONS = Yes
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
# lingua not yet ported
MODPY_PYTEST_ARGS =	--ignore test/ext/test_linguaplugin.pyYes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-babel${MODPY_FLAVOR}

.include <bsd.port.mk>
