COMMENT=	Sphinx extension to support docstrings in Numpy format

MODPY_DISTV=	1.8.0
DISTNAME=	numpydoc-${MODPY_DISTV}
PKGNAME=	py-numpydoc-${MODPY_DISTV}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/numpy/numpydoc

# BSD
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-tabulate \
		graphics/py-matplotlib \
		textproc/py-sphinx \
		www/py-jinja2

.include <bsd.port.mk>
