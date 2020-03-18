# $OpenBSD: Makefile,v 1.12 2020/03/18 18:08:13 bket Exp $

COMMENT =		converting Jupyter notebooks

MODPY_EGG_VERSION =	5.3.1
DISTNAME =		nbconvert-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	nbconvert

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-entrypoints${MODPY_FLAVOR}>=0.2.2 \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR}>=4.4 \
			devel/py-testpath${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=4.2 \
			textproc/py-mistune${MODPY_FLAVOR}>=0.7.4 \
			textproc/py-pandocfilters${MODPY_FLAVOR}>=1.4.1 \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-bleach${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR}>=4.2 \
			devel/py-nose${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=4.0

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
