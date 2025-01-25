COMMENT=	JSON schema meta-schemas and vocabularies

MODPY_DISTV=	2024.10.1
DISTNAME=	jsonschema_specifications-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	devel

# https://github.com/python-jsonschema/jsonschema-specifications/
HOMEPAGE=	https://jsonschema-specifications.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-referencing

.include <bsd.port.mk>
