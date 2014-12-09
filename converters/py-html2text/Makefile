# $OpenBSD: Makefile,v 1.4 2014/12/09 22:46:23 rpe Exp $

COMMENT =	HTML to markdown-formatted text converter

MODPY_EGG_VERSION =	2014.12.5
DISTNAME =	html2text-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	converters
HOMEPAGE =	http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=h/html2text/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	mv ${PREFIX}/bin/{,py-}html2text

.include <bsd.port.mk>
