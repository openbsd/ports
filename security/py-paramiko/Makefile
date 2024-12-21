COMMENT =	low-level pure Python implementation of SSHv2

MODPY_DISTV =	3.5.0
DISTNAME =		paramiko-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security
REVISION =		0

HOMEPAGE =		https://www.paramiko.org/

# LGPL
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-asn1 \
			security/py-bcrypt \
			security/py-cryptography \
			security/py-PyNaCl
TEST_DEPENDS =		devel/py-mock \
			devel/py-invoke \
			textproc/py-icecream

MODPY_ADJ_FILES =	demos/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-paramiko
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paramiko
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/py-paramiko

.include <bsd.port.mk>
