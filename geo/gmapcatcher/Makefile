# $OpenBSD: Makefile,v 1.33 2021/10/29 16:13:17 sthen Exp $

COMMENT=	offline maps viewer

GH_ACCOUNT=	heldersepu
GH_PROJECT=	GMapCatcher
GH_TAGNAME=	0.8.2.1
MODPY_EGG_VERSION=	${GH_TAGNAME}
PKGNAME=	${DISTNAME:L}

CATEGORIES=	geo x11

HOMEPAGE=	https://github.com/heldersepu/GMapCatcher

# GPLv2+
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES= distfile contains some cached tiles which are probably copyright

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

BUILD_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py2-Pillow

RUN_DEPENDS=	x11/py-gtk2 \
		databases/py-sqlite2 \
		graphics/py2-Pillow \
		devel/desktop-file-utils

post-extract:
	cp ${WRKSRC}/installer/setup.py ${WRKSRC}/

pre-configure:
	sed -i -e 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/gmapcatcher/widgets/mapPixbuf.py

post-install:
	mv ${PREFIX}/bin/maps.py ${PREFIX}/bin/mapcatcher
	mv ${PREFIX}/bin/download.py ${PREFIX}/bin/mapdownloader
	mv ${PREFIX}/share/pixmaps/map.png ${PREFIX}/share/pixmaps/mapcatcher.png

.include <bsd.port.mk>
