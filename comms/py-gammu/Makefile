COMMENT =		python bindings for Gammu

MODPY_DISTV =		3.2.5
DISTNAME =		python_gammu-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/python_/py-/}

CATEGORIES =		comms

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += Gammu gsmsd m pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# This test crashes
MODPY_PYTEST_ARGS =	-v --ignore test/test_smsd.py
MODPY_TEST_LINK_SO =	Yes

LIB_DEPENDS =		comms/gammu

SEPARATE_BUILD = 	Yes

.include <bsd.port.mk>
