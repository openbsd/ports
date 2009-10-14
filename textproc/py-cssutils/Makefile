# $OpenBSD: Makefile,v 1.2 2009/10/14 22:07:47 landry Exp $

COMMENT =	python package to parse and build CSS

CATEGORIES =	textproc

MODPY_EGG_VERSION =	0.9.6
DISTNAME =	cssutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}p0
MASTER_SITES =	http://cssutils.googlecode.com/files/

EXTRACT_SUFX =	.zip

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE =	http://cthedot.de/cssutils/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	chmod 444 ${PREFIX}/lib/python2.5/site-packages/${DISTNAME}-py${MODPY_VERSION}.egg-info/*

.include <bsd.port.mk>
