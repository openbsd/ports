COMMENT =		convert Jupyter notebooks (.ipynb) to other formats

MODPY_DISTV =		7.16.5
DISTNAME =		nbconvert-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-jupyter_core>=4.7 \
			devel/py-nbclient>=0.5.0 \
			devel/py-nbformat>=5.7 \
			devel/py-traitlets>=5.1 \
			sysutils/py-packaging \
			textproc/py-MarkupSafe>=2.0 \
			textproc/py-defusedxml \
			textproc/py-jupyterlab_pygments \
			textproc/py-mistune>=2.0.3,<4 \
			textproc/py-pandocfilters>=1.4.1 \
			textproc/py-pygments>=2.4.1 \
			textproc/py-tinycss2 \
			www/py-beautifulsoup4 \
			www/py-bleach>=5.0.0 \
			www/py-jinja2>=3.0

# needs ipywidgets>=7.5
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-flaky \
			devel/py-ipykernel

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
