COMMENT=	let Poetry fetch versions from VCS tags

MODPY_DISTV=	1.9.1
DISTNAME=	poetry_dynamic_versioning-${MODPY_DISTV}
PKGNAME=	py-poetry-dynamic-versioning-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mtkennerly/poetry-dynamic-versioning/

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	devel/py-dunamai \
		devel/py-poetry-core \
		textproc/py-tomlkit \
		www/py-jinja2
# - some tests and some runtime usage wants poetry (not poetry-core), not ported
# - disable test__get_version tests which require running from a git checkout
# - some test__enable_in_doc__project tests fail, look like the expected output
# may need changing?
MODPY_PYTEST_ARGS= -vv --ignore tests/test_integration.py \
		-k 'not test__get_version__defaults \
		and not test__get_version__format_jinja'

.include <bsd.port.mk>
