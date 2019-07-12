# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:20 sthen Exp $

COMMENT =	Python wrapper for Xvfb, Xephyr and Xvnc

MODPY_EGG_VERSION = 0.2.1
DISTNAME =	PyVirtualDisplay-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L:S/^py/py-/}
REVISION =	0

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
