COMMENT=	object-oriented JSONSchema

MODPY_DISTV=	0.3.3

DISTNAME=	jsonschema_path-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pypi.org/project/jsonschema-path/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-pathable \
		textproc/py-referencing \
		textproc/py-yaml

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

.include <bsd.port.mk>
