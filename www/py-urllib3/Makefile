COMMENT=	HTTP library for Python

MODPY_DISTV=	1.26.18
DISTNAME=	urllib3-${MODPY_DISTV}
PKGNAME=	py-urllib3-${MODPY_DISTV}
REVISION=	1

CATEGORIES=	www

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-dateutil \
		devel/py-mock \
		net/py-socks \
		sysutils/py-psutil \
		security/py-trustme \
		www/py-tornado

.include <bsd.port.mk>
