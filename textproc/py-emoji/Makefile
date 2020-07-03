# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:14 sthen Exp $

COMMENT =		emoji for Python

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		emoji-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/carpedm20/emoji/

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
