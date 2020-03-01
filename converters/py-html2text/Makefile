# $OpenBSD: Makefile,v 1.18 2020/03/01 19:52:41 paco Exp $

COMMENT =		HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2020.1.16
DISTNAME =		html2text-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		converters
HOMEPAGE =		http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

post-install:
	mv ${PREFIX}/bin/html2text ${PREFIX}/bin/${MODPY_PY_PREFIX}html2text

.include <bsd.port.mk>
