COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>
