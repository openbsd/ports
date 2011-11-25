# $OpenBSD: Makefile,v 1.18 2011/11/25 20:19:30 eric Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	0.13
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://launchpad.net/pyopenssl/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyOpenSSL/}

MODULES=	lang/python

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}

EXAMPLESDIR=	${PREFIX}/share/examples/py-openssl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

REGRESSDIR=${WRKSRC}/regress

do-regress:
	mkdir ${REGRESSDIR}
	cd ${REGRESSDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_crypto.py
	cd ${REGRESSDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_rand.py
	cd ${REGRESSDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_ssl.py

.include <bsd.port.mk>
