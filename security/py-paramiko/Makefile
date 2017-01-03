# $OpenBSD: Makefile,v 1.42 2017/01/03 19:26:14 landry Exp $

COMMENT = 	Python module that implements the SSH2 protocol

MODPY_EGG_VERSION = 	1.16.0
DISTNAME = 		paramiko-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security
REVISION =              0

HOMEPAGE = 		https://github.com/paramiko/paramiko/

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI = 		Yes

MODULES = 		lang/python

MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS = 		security/py-crypto${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

MODPY_ADJ_FILES =	demos/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}paramiko
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paramiko
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}paramiko
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}paramiko
	${INSTALL_DATA} ${WRKSRC}/demos/* \
	  ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paramiko

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py --verbose

.include <bsd.port.mk>
