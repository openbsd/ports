COMMENT=		fswebcam is a small and simple webcam app

DISTNAME=		fswebcam-20200725

CATEGORIES=		graphics

HOMEPAGE=		https://www.sanslogic.co.uk/fswebcam/

MASTER_SITES=		https://www.sanslogic.co.uk/fswebcam/files/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c gd

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-v4l1
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fswebcam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/fswebcam.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
