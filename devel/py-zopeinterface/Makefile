COMMENT=	object interface infrastructure from Zope

MODPY_DISTV=	8.6
DISTNAME=	zope_interface-${MODPY_DISTV}
PKGNAME=	py-zopeinterface-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/zopefoundation/zope.interface

# Zope Public License
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-zopeevent \
		devel/py-zopetesting

.include <bsd.port.mk>
