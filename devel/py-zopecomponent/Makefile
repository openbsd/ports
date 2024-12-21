COMMENT=	component architecture from Zope

MODPY_DISTV=	4.2.2

DISTNAME=	zope.component-${MODPY_DISTV}
PKGNAME=	py-zopecomponent-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	10

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
