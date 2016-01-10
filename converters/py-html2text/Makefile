# $OpenBSD: Makefile,v 1.8 2016/01/10 17:27:16 jasper Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2016.1.8
DISTNAME =	html2text-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	converters
HOMEPAGE =	http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	mv ${PREFIX}/bin/{,py-}html2text

.include <bsd.port.mk>
