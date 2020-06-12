# $OpenBSD: Makefile,v 1.19 2020/06/12 20:48:02 naddy Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pyflakes


# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PKGNAME =		pyflakes${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}

post-install:
	mv ${PREFIX}/bin/pyflakes ${PREFIX}/bin/pyflakes${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
