# $OpenBSD: Makefile,v 1.10 2018/04/30 20:40:11 naddy Exp $

COMMENT =	Python library for pretty-printing tabular data

MODPY_EGG_VERSION =	0.7.2
DISTNAME =		prettytable-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc devel
REVISION =		1

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=prettytable/}
HOMEPAGE =	https://code.google.com/p/prettytable/

PKG_ARCH =	*

FLAVOR ?=
FLAVORS =	python3

# 3 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_ENV +=		LC_CTYPE=C.UTF-8

post-install:
	chmod -R a+r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/prettytable-${MODPY_EGG_VERSION}-py${MODPY_VERSION}.egg-info/

.include <bsd.port.mk>
