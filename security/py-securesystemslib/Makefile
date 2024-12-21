COMMENT =	library providing cryptographic and general-purpose routines

MODPY_DISTV =	0.23.0

DISTNAME =	securesystemslib-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	security

HOMEPAGE =	https://github.com/secure-systems-lab/securesystemslib/

MAINTAINER =	George Rosamond <george@nycbug.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-colorama \
			security/py-cryptography \
			security/py-PyNaCl

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
