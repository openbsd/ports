# $OpenBSD: Makefile,v 1.6 2015/09/29 10:51:14 sthen Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2014.12.5
DISTNAME =	html2text-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
