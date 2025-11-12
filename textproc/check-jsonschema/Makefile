COMMENT=	cli and pre-commit hook for JSON Schema validation

MODPY_DISTV=	0.35.0
DISTNAME=	check_jsonschema-${MODPY_DISTV}
PKGNAME=	check-jsonschema-${MODPY_DISTV}

CATEGORIES=	textproc devel

HOMEPAGE=	https://github.com/python-jsonschema/check-jsonschema

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click \
		devel/py-jsonschema \
		textproc/py-referencing \
		textproc/py-regress \
		textproc/py-ruamel.yaml \
		www/py-requests

TEST_DEPENDS=	devel/py-coverage \
		devel/py-identify \
		devel/py-test-xdist \
		www/py-responses

.include <bsd.port.mk>
