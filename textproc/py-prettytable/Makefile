# $OpenBSD: Makefile,v 1.3 2013/03/11 16:23:48 benoit Exp $

COMMENT =	Python library for pretty-printing tabular data

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		prettytable-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc devel

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MASTER_SITES =	http://prettytable.googlecode.com/files/
HOMEPAGE =	http://code.google.com/p/prettytable/

PKG_ARCH =	*

# 3 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
