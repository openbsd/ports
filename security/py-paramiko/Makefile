COMMENT =	low-level pure Python implementation of SSHv2

MODPY_EGG_VERSION =	3.5.0
DISTNAME =		paramiko-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security

HOMEPAGE =		https://www.paramiko.org/

# LGPL
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			security/py-bcrypt${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-invoke${MODPY_FLAVOR} \
			textproc/py-icecream${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

MODPY_ADJ_FILES =	demos/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-paramiko
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paramiko
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/py-paramiko

.include <bsd.port.mk>
