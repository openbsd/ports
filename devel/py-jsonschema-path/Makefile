COMMENT=	object-oriented JSONSchema

# was renamed from jsonschema-spec
MODPY_DISTV=	0.3.3

DISTNAME=	jsonschema_path-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	1

CATEGORIES=	devel

# https://github.com/p1c2u/jsonschema-path
HOMEPAGE=	https://pypi.org/project/jsonschema-path/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-pathable \
		textproc/py-referencing \
		textproc/py-yaml

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
# no real tests in pypi sdist, they are present on github
NO_TEST=	Yes

.include <bsd.port.mk>
