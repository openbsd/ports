COMMENT=	object interface infrastructure from Zope

MODPY_EGG_VERSION=	5.5.2

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	0

# Zope Public License
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
TEST_ENV=	PY_IGNORE_IMPORTMISMATCH=1

TEST_DEPENDS=	devel/py-zopeevent${MODPY_FLAVOR} \
		devel/py-zopetesting${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
