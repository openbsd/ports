# $OpenBSD: Makefile,v 1.12 2016/11/07 23:53:38 jca Exp $

COMMENT =		HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2016.9.19
DISTNAME =		html2text-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		converters
HOMEPAGE =		http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/{,${MODPY_PY_PREFIX}}html2text

.include <bsd.port.mk>
