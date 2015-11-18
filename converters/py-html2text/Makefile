# $OpenBSD: Makefile,v 1.7 2015/11/18 13:01:34 ajacoutot Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2015.11.4
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
