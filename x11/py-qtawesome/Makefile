# $OpenBSD: Makefile,v 1.4 2019/05/13 19:03:54 danj Exp $

COMMENT =		FontAwesome icons in PyQt and PySide applications

MODPY_EGG_VERSION =	0.4.4
DISTNAME =		QtAwesome-${MODPY_EGG_VERSION}
PKGNAME =		py-qtawesome-${MODPY_EGG_VERSION}
CATEGORIES =		x11
REVISION =		1

HOMEPAGE =		https://github.com/spyder-ide/qtawesome

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			x11/py-qtpy${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
