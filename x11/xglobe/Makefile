# $OpenBSD: Makefile,v 1.7 2000/06/19 12:59:15 espie Exp $

CATEGORIES=x11
HOMEPAGE=http://wwwrzstud.rz.uni-karlsruhe.de/%7Euddn/xglobe/
#MASTER_SITES=${HOMEPAGE}
# Temporary release
MASTER_SITES=ftp://quatramaran.ens.fr/pub/espie/
DISTNAME=xglobe-0.5p1
NEED_VERSION=1.295

MAINTAINER=espie@cvs.openbsd.org

# GPL, included map is free
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

MAKE_FLAGS=XGLOBE_DIR=${PREFIX}
MAKE_FLAGS+=QT_INCLUDE_DIR=${LOCALBASE}/include/X11/qt
MAKE_FLAGS+=QT_LIB_DIR=${LOCALBASE}/lib


FLAVORS=no_map gfx
FLAVOR?=
.if ${FLAVOR:L:Mno_map}
DISTFILES=${DISTNAME}-no-map${EXTRACT_SUFX}

# Kludge install for no map around
pre-install:
	@touch ${WRKSRC}/map.bmp

post-install::
	@rm ${PREFIX}/lib/xglobe/map.bmp
.endif

LIB_DEPENDS=qt.1.45::x11/qt

.if ${FLAVOR:L:Mgfx}
MAKE_FLAGS+=WITH_QIMGIO=-DWITH_QIMAGEIO
MAKE_FLAGS+=LIBS='-lX11 -lqt -lm -lqimgio -lpng -lz -ljpeg'
LIB_DEPENDS+=jpeg.::graphics/jpeg
LIB_DEPENDS+=png.::graphics/png
.endif

post-install::
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README.maps ${PREFIX}/share/doc/xglobe
	${INSTALL_SCRIPT} ${FILESDIR}/getcloudmap ${PREFIX}/bin
	${INSTALL_DATA} ${FILESDIR}/OpenBSD-markers ${PREFIX}/lib/xglobe

SUPDISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-no-map${EXTRACT_SUFX}

FAKE_FLAGS=XGLOBE_DIR=${WRKINST}${PREFIX}

.include <bsd.port.mk>
