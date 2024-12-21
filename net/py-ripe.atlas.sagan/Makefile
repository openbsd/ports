COMMENT =	parsing library for RIPE Atlas measurement results

MODPY_DISTV =	1.3.1
GH_ACCOUNT =	RIPE-NCC
GH_PROJECT =	ripe-atlas-sagan
GH_TAGNAME =	v${MODPY_DISTV}
REVISION =	3

PKGNAME =	py-ripe.atlas.sagan-${MODPY_DISTV}

CATEGORIES =	net

HOMEPAGE =	https://github.com/RIPE-NCC/ripe.atlas.sagan

# GPLv3
PERMIT_PACKAGE =Yes

MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	tests/*.py

MODULES =	lang/python

RUN_DEPENDS =	devel/py-dateutil \
		devel/py-tz \
		security/py-cryptography

TEST_DEPENDS =	devel/py-nose

.include <bsd.port.mk>
