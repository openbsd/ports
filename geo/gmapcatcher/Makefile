# $OpenBSD: Makefile,v 1.29 2019/07/12 21:02:21 sthen Exp $

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.8.0.4
DISTNAME=	mapcatcher_${MODPY_EGG_VERSION}
WRKDIST=	${WRKDIR}/mapcatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	geo x11

HOMEPAGE=	https://github.com/heldersepu/GMapCatcher

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

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
