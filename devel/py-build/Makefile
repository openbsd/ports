COMMENT =	simple, correct PEP 517 build frontend

MODPY_EGG_VERSION =	0.8.0

DISTNAME =	build-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://pypa-build.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

MODPY_SETUPTOOLS = Yes

FLAVOR =	python3
FLAVORS =	python3

NO_TEST =	Yes

RUN_DEPENDS =	devel/py-pep517${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

.include <bsd.port.mk>
