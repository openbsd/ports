COMMENT=	cli and pre-commit hook for JSON Schema validation

MODPY_DISTV=	0.39.0
DISTNAME=	check_jsonschema-${MODPY_DISTV}
PKGNAME=	check-jsonschema-${MODPY_DISTV}

CATEGORIES=	textproc devel

HOMEPAGE=	https://github.com/python-jsonschema/check-jsonschema

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-ruamel.yaml \
		devel/py-jsonschema \
		textproc/py-regress \
		www/py-requests \
		devel/py-click

TEST_DEPENDS=	devel/py-coverage \
		devel/py-identify \
		devel/py-test-xdist \
		www/py-responses

.include <bsd.port.mk>
