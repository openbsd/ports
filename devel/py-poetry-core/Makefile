COMMENT =	PEP517 build backend

MODPY_EGG_VERSION =	1.3.2

DISTNAME =	poetry-core-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/python-poetry/poetry-core

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	other

pre-build:
	@if [ -d ${MODPY_SITEPKG}/poetry/core ]; then \
	  echo 'Build may fail ("BackendInvalid") with an older version of poetry-core installed'; \
	fi

.include <bsd.port.mk>
