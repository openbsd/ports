COMMENT=	models and classes to supplement stdlib 'collections' module

MODPY_DISTV=	5.2.1
DISTNAME=	jaraco_collections-${MODPY_DISTV}
PKGNAME=	py-jaraco.collections-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/jaraco/jaraco.collections
HOMEPAGE=	https://jaracocollections.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	textproc/py-jaraco-text \
		devel/py-jaraco-classes

.include <bsd.port.mk>
