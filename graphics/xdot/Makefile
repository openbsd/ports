# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:56 sthen Exp $

COMMENT =	interactive viewer for Graphviz dot graphs

MODPY_EGG_VERSION = 1.1
DISTNAME =	xdot-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/jrfonseca/xdot.py
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	math/graphviz \
		devel/py-gobject3${MODPY_FLAVOR} \
		graphics/cairo

NO_TEST =	Yes

.include <bsd.port.mk>
