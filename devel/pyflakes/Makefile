# $OpenBSD: Makefile,v 1.17 2019/07/31 13:14:27 kmos Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pyflakes

MAINTAINER =		frantisek holop <minusf@obiit.org>

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
