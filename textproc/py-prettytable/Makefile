# $OpenBSD: Makefile,v 1.6 2014/04/14 13:16:28 benoit Exp $

COMMENT =	Python library for pretty-printing tabular data

MODPY_EGG_VERSION =	0.7.2
DISTNAME =		prettytable-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc devel

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MASTER_SITES =	https://prettytable.googlecode.com/files/
HOMEPAGE =	https://code.google.com/p/prettytable/

PKG_ARCH =	*

# 3 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

post-install:
	chmod -R a+r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/prettytable-${MODPY_EGG_VERSION}-py${MODPY_VERSION}.egg-info/

.include <bsd.port.mk>
