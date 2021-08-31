# $OpenBSD: Makefile,v 1.6 2021/08/31 11:05:07 ajacoutot Exp $

COMMENT =		Python wrapper for Xvfb, Xephyr and Xvnc

MODPY_EGG_VERSION =	2.2
DISTNAME =		PyVirtualDisplay-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L:S/^py/py-/}

CATEGORIES =		x11

HOMEPAGE =		https://github.com/ponty/pyvirtualdisplay

# BSD 2-clauses
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS	 = Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-easyprocess${MODPY_FLAVOR}

.include <bsd.port.mk>
