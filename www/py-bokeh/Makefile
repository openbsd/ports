# $OpenBSD: Makefile,v 1.31 2020/08/30 09:24:13 ajacoutot Exp $

COMMENT=		statistical and novel interactive HTML plots for Python

MODPY_EGG_VERSION=	2.2.0
DISTNAME=		bokeh-${MODPY_EGG_VERSION}
PKGNAME=		py-bokeh-${MODPY_EGG_VERSION}

CATEGORIES=		www graphics

HOMEPAGE=		http://bokeh.pydata.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_PYTEST_ARGS=	bokeh
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

TEST_DEPENDS=	 	devel/ipython${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nbconvert${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-selenium${MODPY_FLAVOR}

.include <bsd.port.mk>
