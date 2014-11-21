# $OpenBSD: Makefile,v 1.3 2014/11/21 23:11:12 sthen Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	3.200.3
REVISION =	0
DISTNAME =	html2text-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	converters
HOMEPAGE =	http://www.aaronsw.com/2002/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=h/html2text/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	mv ${PREFIX}/bin/{,py-}html2text

.include <bsd.port.mk>
