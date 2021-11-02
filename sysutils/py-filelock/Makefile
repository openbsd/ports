# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:33 sthen Exp $

COMMENT =		platform independent file lock

MODPY_EGG_VERSION =	3.0.12
DISTNAME =		filelock-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

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
FLAVOR =	python3

.include <bsd.port.mk>
