# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:28 espie Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	0.13
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://launchpad.net/pyopenssl/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyOpenSSL/}

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
	mkdir ${TESTDIR}
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_crypto.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_rand.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_ssl.py

.include <bsd.port.mk>
