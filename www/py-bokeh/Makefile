COMMENT=		statistical and novel interactive HTML plots for Python

MODPY_EGG_VERSION=	3.4.1
DISTNAME=		bokeh-${MODPY_EGG_VERSION}
PKGNAME=		py-bokeh-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		www graphics

HOMEPAGE=		https://bokeh.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
# tests not shipped in pypi distfile
NO_TEST =		Yes

RUN_DEPENDS=		devel/py-typing-extensions${MODPY_FLAVOR}>=3.10.0.0 \
			geo/py-xyzservices${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			math/py-contourpy${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

TEST_DEPENDS=		devel/ipython${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nbconvert${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-selenium${MODPY_FLAVOR}

post-extract:
	sed -i 's/dynamic = \["version"\]/version = "${MODPY_EGG_VERSION}"/' \
	${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
