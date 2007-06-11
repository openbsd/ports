# $OpenBSD: Makefile,v 1.9 2007/06/11 08:56:43 ajacoutot Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.6
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xft Xpm Xrandr Xrender Xau \
			Xdmcp Xinerama expat z c fontconfig freetype m \
			stdc++

MASTER_SITES=		${HOMEPAGE}files/

LIB_DEPENDS=		jpeg.>=62::graphics/jpeg \
			png.>=5::graphics/png

USE_X11= 		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--prefix=${PREFIX} --sysconfdir=${SYSCONFDIR} \
			--mandir=${PREFIX}/man --enable-xinerama
NO_REGRESS=		Yes
#USE_GMAKE=		Yes

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
