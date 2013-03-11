# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:46 espie Exp $

COMMENT =	python package to parse and build CSS

CATEGORIES =	textproc

MODPY_EGG_VERSION =	0.9.7
DISTNAME =	cssutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
MASTER_SITES =	http://cssutils.googlecode.com/files/
REVISION=	1

EXTRACT_SUFX =	.zip

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	http://cthedot.de/cssutils/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	chmod 444 ${WRKINST}/${MODPY_SITEPKG}/${DISTNAME}-py${MODPY_VERSION}.egg-info/*

.include <bsd.port.mk>
