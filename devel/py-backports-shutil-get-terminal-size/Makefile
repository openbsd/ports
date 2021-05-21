# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:23 kmos Exp $

COMMENT =		backport of the get_terminal_size function from shutil

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		backports.shutil_get_terminal_size-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-shutil-get-terminal-size-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-backports

.include <bsd.port.mk>
