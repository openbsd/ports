COMMENT=	auto-generate docs for argparse commands and options

MODPY_DISTV=	0.5.2
DISTNAME=	sphinx_argparse-${MODPY_DISTV}
PKGNAME=	py-sphinx-argparse-${MODPY_DISTV}

CATEGORIES=	textproc

# https://github.com/sphinx-doc/sphinx-argparse/
HOMEPAGE=	https://sphinx-argparse.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-sphinx

TEST_DEPENDS=	textproc/py-lxml \
		devel/py-coverage

.include <bsd.port.mk>
