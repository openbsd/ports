# $OpenBSD: Makefile,v 1.38 2021/03/29 09:03:39 sthen Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	20.0.1
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://github.com/pyca/pyopenssl

# Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	security/py-cryptography${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES=	lang/python
MODPY_PYTEST=	Yes

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-flaky${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR}

.include <bsd.port.mk>
