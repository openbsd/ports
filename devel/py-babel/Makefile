COMMENT=	I18N/L10N tools for Python

MODPY_DISTV=	2.17.0
DISTNAME=	babel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://babel.pocoo.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-tz
TEST_DEPENDS=	devel/py-freezegun

.include <bsd.port.mk>
