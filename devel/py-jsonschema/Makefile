COMMENT=	implementation of JSON Schema validation for Python

MODPY_DISTV=	4.23.0
DISTNAME=	jsonschema-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python-jsonschema/jsonschema

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS=	devel/py-attrs \
		devel/py-jsonschema-specifications \
		devel/py-rpds-py \
		textproc/py-referencing

# jupyter_events needs the "format-nongpl" optional dependencies.
# Not including these could also cause issues due to dpb junking, so
# better to include these RDEPs unconditionally...
RUN_DEPENDS +=	devel/py-isoduration \
		devel/py-rfc3339-validator \
		devel/py-rfc3986-validator \
		net/py-fqdn \
		net/py-idna \
		textproc/py-jsonpointer \
		www/py-uri-template \
		www/py-webcolors

TEST_DEPENDS=	devel/py-pip

.include <bsd.port.mk>
