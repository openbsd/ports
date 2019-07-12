# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:29 sthen Exp $

MODPY_EGG_VERSION =	2.8
COMMENT =	Python interface to libarchive
DISTNAME =	libarchive-c-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1
CATEGORIES =	archivers devel

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# CC0
PERMIT_PACKAGE =	Yes

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	archivers/libarchive

.include <bsd.port.mk>
