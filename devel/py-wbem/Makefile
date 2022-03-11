COMMENT=		CIM operations over HTTP in Python

# 1.0.0+ requires new modules: yamlloader, nocaselist, nocasedict
MODPY_EGG_VERSION=	0.17.2
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION =		2

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
TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

post-install:
	rm ${PREFIX}/bin/*.bat

.include <bsd.port.mk>
