# $OpenBSD: Makefile,v 1.16 2019/04/28 20:51:27 sthen Exp $

COMMENT =		HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2018.1.9
DISTNAME =		html2text-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
	mv ${PREFIX}/bin/html2text ${PREFIX}/bin/${MODPY_PY_PREFIX}html2text

.include <bsd.port.mk>
