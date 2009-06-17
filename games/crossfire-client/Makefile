# $OpenBSD: Makefile,v 1.21 2009/06/17 01:53:32 sthen Exp $

COMMENT=	graphical networked AD&D style game

VERSION=	1.11.0
DISTNAME=	crossfire-client-${VERSION}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		crossfire-client-images-${VERSION}${EXTRACT_SUFX}

HOMEPAGE=	http://crossfire.real-time.com/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	GL GLU SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xmu Xrandr Xrender atk-1.0 c \
		cairo crypto expat fontconfig freetype gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 idn m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crossfire/}

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		SDL_image.>=2::devel/sdl-image \
		glut.>=4::graphics/freeglut \
		curl.>=8::net/curl

USE_X11=		Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-L${X11BASE}/lib -lm -lXi -lXmu" \
		ac_cv_path_SVNVERSION=""
CONFIGURE_ARGS=	--enable-gtkv2 \
		--disable-gtkv1

IMG=	bmaps.client crossfire.base crossfire.clsc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/crossfire-client
.for file in ${IMG}
	${INSTALL_DATA} ${WRKDIR}/${file} ${PREFIX}/share/crossfire-client
.endfor
	${INSTALL_MAN} ${WRKSRC}/gtk/gcfclient.man \
		 ${PREFIX}/man/man6/gcfclient.6

.include <bsd.port.mk>
