COMMENT =		source code spelling checker

MODPY_EGG_VERSION =	2.3.0
DISTNAME =		codespell-${MODPY_EGG_VERSION}

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/codespell-project/codespell

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-test-cov${MODPY_FLAVOR}

# XXX needs pytest-dependency, not in ports
MODPY_PYTEST_ARGS =	--ignore codespell_lib/tests/test_dictionary.py

.include <bsd.port.mk>
