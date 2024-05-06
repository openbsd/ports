COMMENT=	models and classes to supplement stdlib 'collections' module

MODPY_EGG_VERSION=	3.8.0
DISTNAME=	jaraco.collections-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/jaraco/jaraco.collections
HOMEPAGE=	https://jaracocollections.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
RUN_DEPENDS=	textproc/py-jaraco-text${MODPY_FLAVOR} \
		devel/py-jaraco-classes${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
