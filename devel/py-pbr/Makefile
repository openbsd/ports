COMMENT=	manage setuptools packaging needs in a consistent manner

MODPY_DISTV=	6.1.0
DISTNAME=	pbr-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# https://github.com/openstack-dev/pbr
HOMEPAGE=	https://docs.openstack.org/pbr/latest/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# needs unported deps, at least: testscenarios, testresources, stestr
NO_TEST=	Yes

.include <bsd.port.mk>
