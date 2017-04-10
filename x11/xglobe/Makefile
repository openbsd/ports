# $OpenBSD: Makefile,v 1.73 2017/04/10 11:46:37 sthen Exp $

COMMENT=	display the Earth on X11

CATEGORIES=	x11 geo
HOMEPAGE=	http://www.shaderwrangler.com/xglobe/
#MASTER_SITES=	${HOMEPAGE}
# Temporary release
MASTER_SITES=	https://distfiles.nl/
DISTNAME=	xglobe-0.5p2
PKGNAME=	xglobe-0.5
REVISION=	40

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL, included map is free
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m pthread ${LIBCXX}

MODULES=		x11/qt3

MAKE_FLAGS=	XGLOBE_DIR=${PREFIX}

RUN_DEPENDS=	geo/openbsd-developers

FLAVORS=	no_map
FLAVOR?=
.if ${FLAVOR:Mno_map}
DISTFILES=	${DISTNAME}-no-map${EXTRACT_SUFX}

# Kludge install for no map around
pre-install:
	@touch ${WRKSRC}/map.bmp

post-install::
	@rm ${PREFIX}/lib/xglobe/map.bmp
.endif


MAKE_FLAGS+=	QT_INCLUDE_DIR=${MODQT_INCDIR}
MAKE_FLAGS+=	QT_LIB_DIR=${MODQT_LIBDIR}

MAKE_FLAGS+=	CPP="${CXX}" LINK="${CXX}"
MAKE_FLAGS+=	OPTIONS="${CXXFLAGS} -pthread -fno-exceptions -funroll-loops"
MAKE_FLAGS+=	LFLAGS='-pthread'
MAKE_FLAGS+=	LIBS='-lX11 -lqt-mt -lm'

# for linking against libpng
MAKE_FLAGS+=	'LIB_DIRS=-L$$(QT_LIB_DIR) -L$$(X11_LIB_DIR) -L$(LOCALBASE)/lib'
MAKE_FLAGS+=	COPTS='${COPTS}'

NO_TEST=	Yes

post-install::
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xglobe
	${INSTALL_DATA} ${WRKSRC}/README.maps ${PREFIX}/share/doc/xglobe
	${INSTALL_SCRIPT} ${FILESDIR}/getcloudmap ${PREFIX}/bin
	ln -sf ${TRUEPREFIX}/share/markers/OpenBSD ${PREFIX}/lib/xglobe/OpenBSD-markers

SUPDISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-no-map${EXTRACT_SUFX}

FAKE_FLAGS=	XGLOBE_DIR=${WRKINST}${PREFIX}

.include <bsd.port.mk>
