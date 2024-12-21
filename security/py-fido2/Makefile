COMMENT =		Python module to communicate with USB FIDO devices

MODPY_DISTV =	1.1.2

DISTNAME =		fido2-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		security

HOMEPAGE =		https://github.com/Yubico/python-fido2

# BSD, APL 2.0, MPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

# often hangs
MODPY_PYTEST_ARGS =	--ignore tests/test_hid.py

RUN_DEPENDS =		security/py-cryptography \
			security/py-pyscard
BUILD_DEPENDS =		${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2

.include <bsd.port.mk>
