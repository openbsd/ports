# $OpenBSD: Makefile,v 1.18 2002/04/15 09:12:11 espie Exp $

COMMENT=	"display the Earth on X11"

CATEGORIES=	x11
HOMEPAGE=	http://www.cs.unc.edu/~scheuerm/xglobe/
#MASTER_SITES=	${HOMEPAGE}
# Temporary release
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/
DISTNAME=	xglobe-0.5p2
NEED_VERSION=	1.500

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL, included map is free
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
MODULES=		qt3

MAKE_FLAGS=	XGLOBE_DIR=${PREFIX}

FLAVORS=	no_map
FLAVOR?=
.if ${FLAVOR:L:Mno_map}
DISTFILES=	${DISTNAME}-no-map${EXTRACT_SUFX}

# Kludge install for no map around
pre-install:
	@touch ${WRKSRC}/map.bmp

post-install::
	@rm ${PREFIX}/lib/xglobe/map.bmp
.endif


MAKE_FLAGS+=	QT_INCLUDE_DIR=${MODQT_INCDIR}
MAKE_FLAGS+=	QT_LIB_DIR=${MODQT_LIBDIR}

# for linking against libpng
MAKE_FLAGS+=	'LIB_DIRS=-L$$(QT_LIB_DIR) -L$$(X11_LIB_DIR) -L$(LOCALBASE)/lib'
MAKE_FLAGS+=	COPTS='${COPTS}'

post-install::
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README.maps ${PREFIX}/share/doc/xglobe
	${INSTALL_SCRIPT} ${FILESDIR}/getcloudmap ${PREFIX}/bin
	${INSTALL_DATA} ${FILESDIR}/OpenBSD-markers ${PREFIX}/lib/xglobe

SUPDISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-no-map${EXTRACT_SUFX}

FAKE_FLAGS=	XGLOBE_DIR=${WRKINST}${PREFIX}

.include <bsd.port.mk>
