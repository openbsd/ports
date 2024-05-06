COMMENT =	library providing cryptographic and general-purpose routines

MODPY_EGG_VERSION =	0.23.0

DISTNAME =	securesystemslib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	security

HOMEPAGE =	https://github.com/secure-systems-lab/securesystemslib/

MAINTAINER =	George Rosamond <george@nycbug.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR}

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
