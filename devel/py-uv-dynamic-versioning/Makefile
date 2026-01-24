COMMENT=	provide version info for uv/hatch projects

MODPY_DISTV=	0.13.0
DISTNAME=	uv_dynamic_versioning-${MODPY_DISTV}
PKGNAME=	py-uv-dynamic-versioning-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/ninoseki/uv-dynamic-versioning

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-dunamai \
		devel/py-hatchling \
		www/py-jinja2 \
		textproc/py-tomlkit
# these error out unless run from a git checkout of uv-dynamic-versioning
MODPY_PYTEST_ARGS= \
		--ignore tests/test_main.py \
		--ignore tests/test_metadata_hook.py \
		--ignore tests/test_version_source.py
TEST_DEPENDS=	devel/py-gitpython \
		devel/git

.include <bsd.port.mk>
