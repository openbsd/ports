# $OpenBSD: Makefile,v 1.12 2015/12/24 01:41:53 bentley Exp $

COMMENT=		fswebcam is a small and simple webcam app

DISTNAME=		fswebcam-20140113
CATEGORIES=		graphics
MASTER_SITES=		http://www.firestorm.cx/fswebcam/files/

HOMEPAGE=		http://www.firestorm.cx/fswebcam/

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

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
