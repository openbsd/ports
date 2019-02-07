# $OpenBSD: Makefile,v 1.12 2019/02/07 12:28:41 sthen Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	1.0.23
DISTNAME =		Unidecode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		textproc devel

HOMEPAGE =		https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI = 		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_ENV =		LC_CTYPE=C.UTF-8

post-install:
	mv ${PREFIX}/bin/unidecode{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
