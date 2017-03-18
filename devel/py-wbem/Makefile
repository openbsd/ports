# $OpenBSD: Makefile,v 1.7 2017/03/18 22:35:12 sthen Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.10.0
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/py-pip${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-ply${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-M2Crypto${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
