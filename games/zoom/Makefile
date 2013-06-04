# $OpenBSD: Makefile,v 1.18 2013/06/04 18:41:45 naddy Exp $

COMMENT=		Z-code interpreter for X11

DISTNAME=		zoom-1.1.4
CATEGORIES=     	games

HOMEPAGE=		http://www.logicalshift.co.uk/unix/zoom/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xft Xrender c expat \
			fontconfig freetype m pthread-stubs xcb z \
			png>=6 t1>=6

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		graphics/png \
			devel/t1lib

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

VMEM_WARNING=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zoom
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zoom/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zoom
	${INSTALL_DATA} ${WRKSRC}/src/zoomrc \
		${PREFIX}/share/examples/zoom/dot.zoomrc

.include <bsd.port.mk>
