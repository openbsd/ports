# $OpenBSD: Makefile,v 1.2 2000/05/19 14:04:37 espie Exp $

CATEGORIES=x11
HOMEPAGE=http://wwwrzstud.rz.uni-karlsruhe.de/%7Euddn/xglobe/
MASTER_SITES=${HOMEPAGE}
DISTNAME=xglobe-0.5

MAINTAINER=espie@cvs.openbsd.org

FAKE=			Yes

# GPL, included map is free
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

FLAVORS=no_map
FLAVOR?=
.if ${FLAVOR:L} == "no_map"
DISTFILES=${DISTNAME}-no-map${EXTRACT_SUFX}

# Kludge install for no map around
pre-install:
	touch ${WRKSRC}/map.bmp

post-install:
	rm ${PREFIX}/lib/xglobe/map.bmp
.endif

SUPDISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-no-map${EXTRACT_SUFX}

LIB_DEPENDS=qt.1.45::x11/qt

MAKE_FLAGS=XGLOBE_DIR=${PREFIX}
MAKE_FLAGS+=QT_INCLUDE_DIR=${LOCALBASE}/include/X11/qt
MAKE_FLAGS+=QT_LIB_DIR=${LOCALBASE}/lib

FAKE_FLAGS=XGLOBE_DIR=${WRKINST}${PREFIX}

.include <bsd.port.mk>
