# $OpenBSD: Makefile,v 1.4 2021/05/21 19:50:21 kmos Exp $

COMMENT =	backport of Python 3.3's 'lzma' module for XZ/LZMA

MODPY_EGG_VERSION =	0.0.14

DISTNAME =	backports.lzma-${MODPY_EGG_VERSION}
PKGNAME =	py-backports-lzma-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/peterjc/backports.lzma

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += lzma pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		archivers/xz

.include <bsd.port.mk>
