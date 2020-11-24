# $OpenBSD: Makefile,v 1.31 2020/11/24 16:44:16 sthen Exp $

COMMENT=	offline maps viewer

MODPY_EGG_VERSION=	0.8.0.4
DISTNAME=	mapcatcher_${MODPY_EGG_VERSION}
WRKDIST=	${WRKDIR}/mapcatcher-${MODPY_EGG_VERSION}
PKGNAME=	gmapcatcher-${MODPY_EGG_VERSION}
REVISION=	2

CATEGORIES=	geo x11

HOMEPAGE=	https://github.com/heldersepu/GMapCatcher

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.sigtrap.nl/

MODULES=	lang/python

BUILD_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py2-Pillow

RUN_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py2-Pillow \
		devel/desktop-file-utils

pre-configure:
	sed -i -e 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/gmapcatcher/widgets/mapPixbuf.py
	gunzip ${WRKSRC}/man/*.gz

xpost-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/mapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py ${PREFIX}/bin/mapdownloader

.include <bsd.port.mk>
