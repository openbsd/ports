# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:28 sthen Exp $

COMMENT=		Z-code interpreter for X11

DISTNAME=		zoom-1.1.5
CATEGORIES=     	games

HOMEPAGE=		http://www.logicalshift.co.uk/unix/zoom/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext Xrender c fontconfig m png t1 z

MASTER_SITES=		http://www.logicalshift.co.uk/unix/zoom/

LIB_DEPENDS=		devel/t1lib \
			graphics/png

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

CFLAGS +=	-fgnu89-inline

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zoom
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zoom/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zoom
	${INSTALL_DATA} ${WRKSRC}/src/zoomrc \
		${PREFIX}/share/examples/zoom/dot.zoomrc

.include <bsd.port.mk>
