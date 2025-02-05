COMMENT=	manage setuptools packaging needs in a consistent manner

MODPY_DISTV=	6.1.1
DISTNAME=	pbr-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/openstack-dev/pbr
HOMEPAGE=	https://docs.openstack.org/pbr/latest/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
# uses in-tree pbr, which uses setuptools
MODPY_PYBUILD=	other
BUILD_DEPENDS=	devel/py-setuptools
MODPY_PI=	Yes

# needs unported deps, at least: testscenarios, testresources, stestr
NO_TEST=	Yes

.include <bsd.port.mk>
