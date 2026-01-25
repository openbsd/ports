COMMENT=	catch certain exceptions and provide an indication

MODPY_DISTV=	6.1.0
DISTNAME=	jaraco_context-${MODPY_DISTV}
PKGNAME=	py-jaraco.context-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/jaraco/jaraco.context
HOMEPAGE=	https://jaracocontext.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes
BUILD_DEPENDS=	misc/py-coherent.licensed
TEST_DEPENDS=	devel/py-jaraco-test \
		net/py-portend

.include <bsd.port.mk>
