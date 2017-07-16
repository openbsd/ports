# $OpenBSD: Makefile,v 1.19 2017/07/16 19:19:05 espie Exp $

COMMENT=		tree window manager
DISTNAME=		treewm-0.4.5
REVISION=		2
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=treewm/}

HOMEPAGE=		http://treewm.sourceforge.net/

MAINTAINER=		William Yodlowsky <william@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt Xxf86vm c m ${COMPILER_LIBCXX}

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
