# $OpenBSD: Makefile,v 1.42 2022/02/10 09:25:25 sthen Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	22.0.0
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://github.com/pyca/pyopenssl

# Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS =	security/py-cryptography${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES=	lang/python
MODPY_PYTEST=	Yes

TEST_DEPENDS=	devel/py-flaky${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR}

.include <bsd.port.mk>
