COMMENT=	country, language, currency and scripts definitions

MODPY_DISTV=	26.2.16
DISTNAME=	pycountry-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	devel

# LGPL2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-importlib-metadata

.include <bsd.port.mk>
