COMMENT =		Python documentation generator

MODPY_EGG_VERSION =	4.0.2
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://www.sphinx-doc.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-babel${MODPY_FLAVOR} \
			graphics/py-imagesize${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-alabaster${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}<0.18 \
			textproc/py-pygments${MODPY_FLAVOR} \
			textproc/py-snowballstemmer${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/applehelp${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/devhelp${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/htmlhelp${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/jsmath${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/qthelp${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/serializinghtml${MODPY_FLAVOR} \
			textproc/py-sphinxcontrib/websupport${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gettext,-tools
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			print/texlive/texmf,-full
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
