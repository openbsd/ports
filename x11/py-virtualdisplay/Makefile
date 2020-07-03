# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:23 sthen Exp $

COMMENT =	Python wrapper for Xvfb, Xephyr and Xvnc

MODPY_EGG_VERSION = 0.2.1
DISTNAME =	PyVirtualDisplay-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L:S/^py/py-/}
REVISION =	1

CATEGORIES =	x11

HOMEPAGE =	https://github.com/ponty/pyvirtualdisplay

# BSD 2-clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/py-easyprocess${MODPY_FLAVOR}

.include <bsd.port.mk>
