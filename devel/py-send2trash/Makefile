# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:49 sthen Exp $

COMMENT =		send files to the trash natively

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		Send2Trash-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/hsoft/send2trash

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
