# $OpenBSD: Makefile,v 1.9 2018/04/25 10:10:48 jasper Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.12.2
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI=		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/py-pbr${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-ply${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-M2Crypto${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR} \
			devel/py-ply${MODPY_FLAVOR}>=3.11

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
