COMMENT=	monitor TCP ports for bound or unbound states

MODPY_DISTV=	3.2.1
DISTNAME=	portend-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

HOMEPAGE=	https://github.com/jaraco/portend

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	devel/py-tempora>=1.8

.include <bsd.port.mk>
