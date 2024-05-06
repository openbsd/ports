COMMENT=	common low-level libraries for logilab projects

MODPY_EGG_VERSION=	1.9.8
DISTNAME=	logilab-common-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://www.logilab.org/project/logilab-common

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-tz${MODPY_FLAVOR}

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
