# $OpenBSD: Makefile,v 1.1.1.1 2014/11/21 22:39:09 landry Exp $

COMMENT =	HTML tree builder for ElementTree

MODPY_EGG_VERSION =	1.0_20050212
DISTNAME =	elementtidy-${MODPY_EGG_VERSION:S/_/-/}
PKGNAME =	py-${DISTNAME:S/0-2/0.2/}
EXTRACT_SUFX =	.zip

CATEGORIES =	textproc
HOMEPAGE =	http://effbot.org/zone/element-tidylib.htm

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://effbot.org/media/downloads/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}
WANTLIB += pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
