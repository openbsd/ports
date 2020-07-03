# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:34 sthen Exp $

MODPY_EGG_VERSION =	2.9
COMMENT =	Python interface to libarchive
DISTNAME =	libarchive-c-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	archivers devel
REVISION =	0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# CC0
PERMIT_PACKAGE =	Yes

FLAVORS =	python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =	archivers/libarchive
TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
