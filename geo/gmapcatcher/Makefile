# $OpenBSD: Makefile,v 1.26 2016/10/01 11:54:15 naddy Exp $

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.8.0.4
DISTNAME=	mapcatcher_${MODPY_EGG_VERSION}
WRKDIST=	${WRKDIR}/mapcatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}

CATEGORIES=	geo x11

HOMEPAGE=	https://code.google.com/p/gmapcatcher/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=gmapcatcher/}

MODULES=	lang/python

BUILD_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py-Pillow

RUN_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py-Pillow \
		devel/desktop-file-utils

pre-configure:
	sed -i -e 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/gmapcatcher/widgets/mapPixbuf.py
	gunzip ${WRKSRC}/man/*.gz

xpost-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/mapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py ${PREFIX}/bin/mapdownloader

.include <bsd.port.mk>
