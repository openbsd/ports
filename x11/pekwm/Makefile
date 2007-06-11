# $OpenBSD: Makefile,v 1.11 2007/06/11 11:19:23 ajacoutot Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xpm Xrandr Xrender Xau Xdmcp \
		Xinerama expat z c fontconfig freetype m stdc++

MASTER_SITES=	${HOMEPAGE}files/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=5::graphics/png

USE_X11= 	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

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
