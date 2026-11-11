COMMENT=	implementation of JSON Schema validation for Python

# check for [format-nongpl] changes in pyproject.toml if updating
MODPY_DISTV=	4.26.0
REVISION=	0
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

# jupyter_events (and thus jupyter-notebook etc) depends on
# jsonpath[format-nongpl]; easier to include here rather than
# list separately in jupyter_events
RUN_DEPENDS +=	devel/py-isoduration \
		devel/py-rfc3339-validator \
		devel/py-rfc3986-validator \
		devel/py-rfc3987-syntax \
		net/py-fqdn \
		net/py-idna \
		textproc/py-jsonpointer \
		www/py-uri-template \
		www/py-webcolors

TEST_DEPENDS=	devel/py-pip \
		devel/py-jsonpath-ng

.include <bsd.port.mk>
