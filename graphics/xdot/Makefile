# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:27 sthen Exp $

COMMENT =	interactive viewer for Graphviz dot graphs

MODPY_EGG_VERSION = 1.2
DISTNAME =	xdot-${MODPY_EGG_VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/jrfonseca/xdot.py
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	math/graphviz \
		devel/py-gobject3${MODPY_FLAVOR} \
		graphics/cairo

NO_TEST =	Yes

.include <bsd.port.mk>
