# $OpenBSD: Makefile,v 1.26 2015/10/06 20:47:46 sthen Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	0.15.1
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://github.com/pyca/pyopenssl

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	security/py-cryptography
BUILD_DEPENDS =	${RUN_DEPENDS}

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES=	lang/python

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}

EXAMPLESDIR=	${PREFIX}/share/examples/py-openssl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

TESTDIR=${WRKSRC}/regress

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_crypto.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_rand.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_ssl.py

.include <bsd.port.mk>
