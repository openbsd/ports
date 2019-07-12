# $OpenBSD: Makefile,v 1.26 2019/07/12 20:51:23 sthen Exp $

COMMENT=		tree window manager
DISTNAME=		treewm-0.4.5
REVISION=		8
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=treewm/}

HOMEPAGE=		http://treewm.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt Xxf86vm c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/imake

USE_GMAKE=		Yes

MAKE_FLAGS=		CC="${CC}" CCOPTIONS="${CFLAGS}" CDEBUGFLAGS="" \
			CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" \
			LIBS="-L${X11BASE}/lib -lXxf86vm -lXpm -lXext -lX11" \
			INCLUDES="-I${X11BASE}/include"

DESTDIRNAME=	ROOT
FAKE_FLAGS=		DOCFILES="ChangeLog PROBLEMS README README.tiling"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/treewm
	${INSTALL_DATA} ${WRKSRC}/default.cfg ${WRKSRC}/sample.cfg \
		${PREFIX}/share/examples/treewm

.include <bsd.port.mk>
