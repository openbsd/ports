# $OpenBSD: Makefile,v 1.4 2019/05/13 18:06:42 danj Exp $

COMMENT =		backport of the get_terminal_size function from shutil

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		backports.shutil_get_terminal_size-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-shutil-get-terminal-size-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-backports

.include <bsd.port.mk>
