# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 21:50:47 kmos Exp $

COMMENT =	friendlier RFC 6265-compliant cookie parser/renderer

MODPY_EGG_VERSION =	2.2.1

DISTNAME =		cookies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
