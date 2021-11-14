# $OpenBSD: Makefile,v 1.11 2021/11/14 15:03:27 sthen Exp $

COMMENT =		send files to the trash natively

MODPY_EGG_VERSION =	1.8.0
DISTNAME =		Send2Trash-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/hsoft/send2trash

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
