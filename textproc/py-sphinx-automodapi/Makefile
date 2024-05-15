COMMENT=	auto-generate API documentation for entire modules in Sphinx

MODPY_EGG_VERSION=	0.17.0
DISTNAME=	sphinx-automodapi-${MODPY_EGG_VERSION}
PKGNAME=	py-sphinx-automodapi-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

# https://github.com/astropy/sphinx-automodapi
HOMEPAGE=	https://sphinx-automodapi.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	textproc/py-sphinx${MODPY_FLAVOR}

# some tests require network access (intersphinx links)
TEST_DEPENDS=	math/graphviz,-main \
		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
