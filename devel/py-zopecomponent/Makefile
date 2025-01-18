COMMENT=	component architecture from Zope

MODPY_DISTV=	6.0
DISTNAME=	zope.component-${MODPY_DISTV}
PKGNAME=	py-zopecomponent-${MODPY_DISTV}
CATEGORIES=	devel

# Zope Public License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-zopeinterface \
		devel/py-zopeevent

# too many deps
NO_TEST=	Yes

.include <bsd.port.mk>
