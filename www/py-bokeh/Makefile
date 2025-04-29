COMMENT=	statistical and novel interactive HTML plots for Python

# 3.7.0 needs narwhals
MODPY_DISTV=	3.6.3
DISTNAME=	bokeh-${MODPY_DISTV}
PKGNAME=	py-bokeh-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	www graphics

HOMEPAGE=	https://bokeh.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# conftest.py, etc missing from pypi distfile
NO_TEST=	Yes

BUILD_DEPENDS=	devel/py-colorama \
		devel/py-setuptools-git-versioning

RUN_DEPENDS=	www/py-jinja2 \
		math/py-contourpy \
		math/py-numpy \
		sysutils/py-packaging \
		math/py-pandas \
		graphics/py-Pillow \
		textproc/py-yaml \
		www/py-tornado \
		geo/py-xyzservices
# not listed in pyproject.toml but still needed
RUN_DEPENDS+=	devel/py-typing-extensions>=3.10.0.0

TEST_DEPENDS=	devel/ipython \
		devel/py-flaky \
		devel/py-mock \
		devel/py-nbconvert \
		devel/py-nbformat \
		math/py-networkx \
		math/py-pandas \
		www/py-requests \
		www/py-selenium

.include <bsd.port.mk>
