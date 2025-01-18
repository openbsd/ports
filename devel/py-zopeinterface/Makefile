COMMENT=	object interface infrastructure from Zope

MODPY_DISTV=	7.2
DISTNAME=	zope.interface-${MODPY_DISTV}
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

TEST_ENV=	PY_IGNORE_IMPORTMISMATCH=1
TEST_DEPENDS=	devel/py-zopeevent \
		devel/py-zopetesting

.include <bsd.port.mk>
