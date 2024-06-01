COMMENT=	country, language, currency and scripts definitions

MODPY_EGG_VERSION=	24.6.1
DISTNAME=	pycountry-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	devel

# LGPL2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
TEST_DEPENDS=	devel/py-importlib-metadata${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
