# $OpenBSD: Makefile,v 1.7 2006/07/30 17:26:05 jasper Exp $

COMMENT=	"aewm++ based pretty themable window manager"

VERSION=	0.1.5
DISTNAME=	pekwm-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m stdc++

MASTER_SITES=		${HOMEPAGE}files/

USE_X11= 		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${LOCALBASE} --sysconfdir=${SYSCONFDIR}
NO_REGRESS=		Yes
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pekwm
	${INSTALL_DATA} ${WRKSRC}/data/autoproperties \
		${WRKSRC}/data/config \
		${WRKSRC}/data/keys \
		${WRKSRC}/data/menu \
		${WRKSRC}/data/mouse \
		${WRKSRC}/data/start \
		${WRKSRC}/data/vars \
                ${PREFIX}/share/examples/pekwm

.include <bsd.port.mk>
