# $OpenBSD: Makefile,v 1.8 2006/10/29 18:16:55 steven Exp $

COMMENT=	"aewm++ based pretty themable window manager"

DISTNAME=	pekwm-0.1.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xpm Xrandr Xrender \
		c fontconfig freetype m stdc++

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
