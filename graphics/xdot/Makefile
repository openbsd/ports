# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:41 sthen Exp $

COMMENT =	interactive viewer for Graphviz dot graphs

MODPY_EGG_VERSION = 1.0
DISTNAME =	xdot-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/jrfonseca/xdot.py
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	math/graphviz \
		devel/py-gobject3${MODPY_FLAVOR} \
		graphics/cairo

NO_TEST =	Yes

.include <bsd.port.mk>
