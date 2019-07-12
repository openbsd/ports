# $OpenBSD: Makefile,v 1.34 2019/07/12 20:49:34 sthen Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	19.0.0
REVISION=	1
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://github.com/pyca/pyopenssl

# Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

FLAVORS=	python3

RUN_DEPENDS =	security/py-cryptography${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES=	lang/python

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-flaky${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}openssl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/{simple,sni}
	${INSTALL_DATA} ${WRKSRC}/examples/README.rst ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/sni/* ${EXAMPLESDIR}/sni

do-test:
	cd ${WRKSRC} && py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
