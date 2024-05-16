COMMENT=	formatter for Python code

MODPY_EGG_VERSION=	0.40.2
DISTNAME=	yapf-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# Apache v2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-importlib-metadata${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

.include <bsd.port.mk>
