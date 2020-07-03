# $OpenBSD: Makefile,v 1.19 2020/07/03 21:12:36 sthen Exp $

COMMENT =		HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2020.1.16
DISTNAME =		html2text-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
