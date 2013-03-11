# $OpenBSD: Makefile,v 1.8 2013/03/11 11:10:52 espie Exp $

COMMENT=		fswebcam is a small and simple webcam app

DISTNAME=		fswebcam-20110717
CATEGORIES=		graphics
MASTER_SITES=		http://www.firestorm.cx/fswebcam/files/

HOMEPAGE=		http://www.firestorm.cx/fswebcam/

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gd

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--disable-v4l1
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fswebcam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/fswebcam.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
