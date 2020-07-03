# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:18 sthen Exp $

COMMENT =	friendlier RFC 6265-compliant cookie parser/renderer

MODPY_EGG_VERSION =	2.2.1

DISTNAME =		cookies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/sashahart/cookies

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
