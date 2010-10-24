# $OpenBSD: Makefile,v 1.8 2010/10/24 21:19:47 ajacoutot Exp $

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.7.5.0
DISTNAME=	GMapCatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}

REVISION=	0

CATEGORIES=	geo x11

HOMEPAGE=	http://code.google.com/p/gmapcatcher/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://gmapcatcher.googlecode.com/files/

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/desktop-file-utils \
		:py-gtk2->=1.10:x11/py-gtk2 \
		:py-sqlite2-*:databases/py-sqlite2 \
		::graphics/py-Imaging 

USE_GROFF =	Yes

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gmapcatcher/mapPixbuf.py
	@find ${WRKSRC} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/mapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py ${PREFIX}/bin/mapdownloader

.include <bsd.port.mk>
