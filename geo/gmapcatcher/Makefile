# $OpenBSD: Makefile,v 1.23 2015/02/18 20:00:21 naddy Exp $

BROKEN=		triggers unlocking a mutex which is not locked (bug probably in py-gtk2, but some other py-gtk2 ports do still work)

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.7.6.1
DISTNAME=	GMapCatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}
REVISION=	9

CATEGORIES=	geo x11

HOMEPAGE=	https://code.google.com/p/gmapcatcher/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	https://gmapcatcher.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py-Pillow

RUN_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py-Pillow \
		devel/desktop-file-utils

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gmapcatcher/mapPixbuf.py
	@find ${WRKSRC} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/mapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py ${PREFIX}/bin/mapdownloader

.include <bsd.port.mk>
