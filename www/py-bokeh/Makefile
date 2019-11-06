# $OpenBSD: Makefile,v 1.26 2019/11/06 16:01:18 ajacoutot Exp $

COMMENT=		statistical and novel interactive HTML plots for Python

MODPY_EGG_VERSION=	1.4.0
DISTNAME=		bokeh-${MODPY_EGG_VERSION}
PKGNAME=		py-bokeh-${MODPY_EGG_VERSION}

CATEGORIES=		www graphics

HOMEPAGE=		http://bokeh.pydata.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
