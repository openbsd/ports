COMMENT =		converting Jupyter notebooks

MODPY_EGG_VERSION =	6.5.0
DISTNAME =		nbconvert-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	nbconvert

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-entrypoints${MODPY_FLAVOR}>=0.2.2 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.7 \
			devel/py-nbclient${MODPY_FLAVOR}>=0.5.0 \
			devel/py-nbformat${MODPY_FLAVOR}>=5.1 \
			devel/py-traitlets${MODPY_FLAVOR}>=5.0 \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-MarkupSafe${MODPY_FLAVOR}>=2.0 \
			textproc/py-defusedxml${MODPY_FLAVOR} \
			textproc/py-jupyterlab_pygments${MODPY_FLAVOR} \
			textproc/py-mistune${MODPY_FLAVOR}>=0.8.1,<2 \
			textproc/py-pandocfilters${MODPY_FLAVOR}>=1.4.1 \
			textproc/py-pygments${MODPY_FLAVOR}>=2.4.1 \
			textproc/py-tinycss2${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-bleach${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}>=3.0

# needs ipywidgets>=7
# needs pyppeteer_req
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=4.0

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
