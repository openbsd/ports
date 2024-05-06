COMMENT=	JSONSchema Spec with object-oriented paths

MODPY_EGG_VERSION=	0.1.6
EPOCH=		0
# 0.2.x has new dependencies
DISTNAME=	jsonschema_spec-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pypi.org/project/jsonschema-spec/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-pathable${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
# coverage only, no real tests in pypi distfile
TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
