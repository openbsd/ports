# $OpenBSD: Makefile,v 1.17 2020/06/17 16:14:43 paco Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.17.2
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		devel/py-ply${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR} \
			devel/py-ply${MODPY_FLAVOR}>=3.10

MODPY_SETUPTOOLS=	Yes

post-install:
	rm ${PREFIX}/bin/*.bat

.include <bsd.port.mk>
