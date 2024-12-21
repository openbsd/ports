COMMENT=	JSONSchema Spec with object-oriented paths

MODPY_DISTV=	0.1.6
EPOCH=		0
# 0.2.x has new dependencies
DISTNAME=	jsonschema_spec-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://pypi.org/project/jsonschema-spec/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-jsonschema \
		devel/py-pathable \
		textproc/py-yaml

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
# coverage only, no real tests in pypi distfile
TEST_DEPENDS=	devel/py-coverage

.include <bsd.port.mk>
