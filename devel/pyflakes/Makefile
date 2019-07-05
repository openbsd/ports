# $OpenBSD: Makefile,v 1.15 2019/07/05 15:43:43 sthen Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}
REVISION =		0

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

post-install:
	mv ${PREFIX}/bin/pyflakes ${PREFIX}/bin/pyflakes${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
