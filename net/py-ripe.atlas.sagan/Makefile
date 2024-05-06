COMMENT =	parsing library for RIPE Atlas measurement results

MODPY_EGG_VERSION =	1.3.1
GH_ACCOUNT =	RIPE-NCC
GH_PROJECT =	ripe-atlas-sagan
GH_TAGNAME =	v${MODPY_EGG_VERSION}
REVISION =	2

PKGNAME =	py-ripe.atlas.sagan-${MODPY_EGG_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/RIPE-NCC/ripe.atlas.sagan

# GPLv3
PERMIT_PACKAGE =Yes

MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	tests/*.py

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
