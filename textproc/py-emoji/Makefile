# $OpenBSD: Makefile,v 1.10 2021/09/19 18:12:20 tb Exp $

COMMENT =		emoji for Python

MODPY_EGG_VERSION =	1.4.2
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
FLAVOR =		python3

.include <bsd.port.mk>
