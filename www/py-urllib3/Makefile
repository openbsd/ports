COMMENT=	HTTP library for Python

MODPY_EGG_VERSION= 1.26.18
DISTNAME=	urllib3-${MODPY_EGG_VERSION}
PKGNAME=	py-urllib3-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	www

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		net/py-socks${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		security/py-trustme${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
