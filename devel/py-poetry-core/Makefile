COMMENT =	PEP517 build backend

MODPY_EGG_VERSION =	1.9.0

DISTNAME =	poetry_core-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/python-poetry/poetry-core

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	other

TEST_DEPENDS =	devel/py-virtualenv${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		textproc/py-tomli_w${MODPY_FLAVOR}

pre-build:
	@if [ -d ${MODPY_SITEPKG}/poetry/core ]; then \
	  echo 'Build may fail ("BackendInvalid") with an older version of poetry-core installed'; \
	fi

.include <bsd.port.mk>
