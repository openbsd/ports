COMMENT=	internationalization helper for Sphinx

MODPY_DISTV=	2.4.0
DISTNAME=	sphinx_intl-${MODPY_DISTV}
PKGNAME=	py-sphinx-intl-${MODPY_DISTV}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-babel \
		devel/py-click \
		textproc/py-sphinx
# needs transifex cli
MODPY_PYTEST_IGNORE= tests/test_cmd_transifex.py \
		tests/test_transifex.py

.include <bsd.port.mk>
