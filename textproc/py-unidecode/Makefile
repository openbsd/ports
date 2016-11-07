# $OpenBSD: Makefile,v 1.9 2016/11/07 20:03:59 jca Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	0.4.19
DISTNAME =		Unidecode-0.04.19
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		textproc devel

HOMEPAGE =		https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# MODPY_PI doesn't work because DISTNAME version number is different
# from MODPY_EGG_VERSION, as we want the latter to be substituted in
# the PLIST
MASTER_SITES =		${MASTER_SITE_PYPI:=U/Unidecode/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_ENV =		LC_CTYPE=C.UTF-8

post-install:
	mv ${PREFIX}/bin/unidecode ${PREFIX}/bin/unidecode${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
