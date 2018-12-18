# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:20 bentley Exp $

COMMENT =		HTML to markdown-formatted text converter

<<<<<<< Makefile
MODPY_EGG_VERSION =	2016.4.2
REVISION =		1
=======
MODPY_EGG_VERSION =	2016.9.19
>>>>>>> 1.13
DISTNAME =		html2text-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		converters
HOMEPAGE =		https://alir3z4.github.io/html2text/

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
