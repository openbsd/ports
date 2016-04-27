# $OpenBSD: Makefile,v 1.10 2016/04/27 21:06:31 jca Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2016.4.2
REVISION =	0
DISTNAME =	html2text-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	converters
HOMEPAGE =	http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/{,${MODPY_PY_PREFIX}}html2text

.include <bsd.port.mk>
