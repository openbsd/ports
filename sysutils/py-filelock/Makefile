# $OpenBSD: Makefile,v 1.1.1.1 2019/12/14 22:16:04 kmos Exp $

COMMENT =		platform independent file lock

MODPY_EGG_VERSION =	3.0.12
DISTNAME =		filelock-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/benediktschmitt/py-filelock

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FIX_EXTRACT_PERMISSIONS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
