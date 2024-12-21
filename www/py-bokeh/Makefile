COMMENT=	statistical and novel interactive HTML plots for Python

MODPY_DISTV=	3.6.1
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

RUN_DEPENDS=	devel/py-typing-extensions>=3.10.0.0 \
		geo/py-xyzservices \
		graphics/py-Pillow \
		math/py-contourpy \
		math/py-numpy \
		math/py-pandas \
		sysutils/py-packaging \
		textproc/py-yaml \
		www/py-jinja2 \
		www/py-tornado

TEST_DEPENDS=	devel/ipython \
		devel/py-flaky \
		devel/py-mock \
		devel/py-nbconvert \
		devel/py-nbformat \
		math/py-networkx \
		math/py-pandas \
		www/py-requests \
		www/py-selenium

post-extract:
	sed -i 's/dynamic = \["version"\]/version = "${MODPY_DISTV}"/' \
	    ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
