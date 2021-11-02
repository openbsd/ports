# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:25 sthen Exp $

COMMENT =		atomic file writes

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		atomicwrites-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/untitaker/python-atomicwrites

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
