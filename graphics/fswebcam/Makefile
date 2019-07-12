# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:58 sthen Exp $

COMMENT=		fswebcam is a small and simple webcam app

DISTNAME=		fswebcam-20140113
CATEGORIES=		graphics
MASTER_SITES=		http://www.firestorm.cx/fswebcam/files/
REVISION=		0

HOMEPAGE=		http://www.firestorm.cx/fswebcam/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c gd pthread

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--disable-v4l1
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fswebcam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/fswebcam.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
