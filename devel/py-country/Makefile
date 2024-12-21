COMMENT=	country, language, currency and scripts definitions

MODPY_DISTV=	24.6.1
DISTNAME=	pycountry-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

CATEGORIES=	devel

# LGPL2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
TEST_DEPENDS=	devel/py-importlib-metadata

.include <bsd.port.mk>
