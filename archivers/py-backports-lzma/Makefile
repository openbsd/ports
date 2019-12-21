# $OpenBSD: Makefile,v 1.1.1.1 2019/12/21 14:14:10 jasper Exp $

COMMENT =	backport of Python 3.3's 'lzma' module for XZ/LZMA

MODPY_EGG_VERSION =	0.0.14

DISTNAME =	backports.lzma-${MODPY_EGG_VERSION}
PKGNAME =	py-backports-lzma-${MODPY_EGG_VERSION}

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/peterjc/backports.lzma

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
