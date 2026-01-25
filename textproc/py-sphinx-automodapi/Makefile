COMMENT=	auto-generate API documentation for entire modules in Sphinx

MODPY_DISTV=	0.22.0
DISTNAME=	sphinx_automodapi-${MODPY_DISTV}
PKGNAME=	py-sphinx-automodapi-${MODPY_DISTV}

CATEGORIES=	textproc

# https://github.com/astropy/sphinx-automodapi
HOMEPAGE=	https://sphinx-automodapi.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	textproc/py-sphinx

# some tests require network access (intersphinx links)
TEST_DEPENDS=	math/graphviz,-main \
		lang/cython

.include <bsd.port.mk>
