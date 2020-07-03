# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:16 sthen Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		Unidecode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		textproc devel

HOMEPAGE =		https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI = 		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/unidecode{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
