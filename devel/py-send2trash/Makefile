# $OpenBSD: Makefile,v 1.8 2021/05/21 19:50:28 kmos Exp $

COMMENT =		send files to the trash natively

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		Send2Trash-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		2

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
