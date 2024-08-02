COMMENT=	object-oriented JSONSchema

MODPY_EGG_VERSION=	0.3.3

DISTNAME=	jsonschema_path-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	devel

HOMEPAGE=	https://pypi.org/project/jsonschema-path/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-pathable${MODPY_FLAVOR} \
		textproc/py-referencing${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

.include <bsd.port.mk>
