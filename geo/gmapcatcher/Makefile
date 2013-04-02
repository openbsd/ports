# $OpenBSD: Makefile,v 1.16 2013/04/02 16:41:21 ajacoutot Exp $

BROKEN=		triggers unlocking a mutex which is not locked (bug probably in py-gtk2, but some other py-gtk2 ports do still work)

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.7.6.1
DISTNAME=	GMapCatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}
REVISION=	3

CATEGORIES=	geo x11

HOMEPAGE=	http://code.google.com/p/gmapcatcher/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://gmapcatcher.googlecode.com/files/

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/py-gtk2>=1.10 \
		databases/py-sqlite2 \
		graphics/py-Imaging

USE_GROFF =	Yes

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gmapcatcher/mapPixbuf.py
	@find ${WRKSRC} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/mapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py ${PREFIX}/bin/mapdownloader

.include <bsd.port.mk>
