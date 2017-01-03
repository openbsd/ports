# $OpenBSD: Makefile,v 1.11 2017/01/03 19:19:49 landry Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pyflakes

MAINTAINER =		frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PKGNAME =		pyflakes${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
REVISION =		0

post-install:
	mv ${PREFIX}/bin/pyflakes ${PREFIX}/bin/pyflakes${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
