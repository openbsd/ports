# $OpenBSD: Makefile,v 1.1.1.1 2012/08/11 12:12:00 edd Exp $

COMMENT =	Python library for pretty-printing tabular data

MODPY_EGG_VERSION =	0.6
DISTNAME =		prettytable-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc devel

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MASTER_SITES =	http://prettytable.googlecode.com/files/
HOMEPAGE =	http://code.google.com/p/prettytable/

PKG_ARCH =	*

# 3 clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
