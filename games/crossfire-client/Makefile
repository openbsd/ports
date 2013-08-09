# $OpenBSD: Makefile,v 1.34 2013/08/09 19:04:49 ajacoutot Exp $

COMMENT=	graphical networked AD&D style game

VERSION=	1.11.0
DISTNAME=	crossfire-client-${VERSION}
REVISION=	9
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		crossfire-client-images-${VERSION}${EXTRACT_SUFX}

HOMEPAGE=	http://crossfire.real-time.com/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	GL GLU SDL X11 Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xmu Xrandr Xrender atk-1.0 c \
		cairo crypto expat fontconfig freetype gio-2.0 glib-2.0 \
		gobject-2.0 idn m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
		pthread-stubs sndio ssl xcb z gdk_pixbuf-2.0 \
		gdk-x11-2.0 gtk-x11-2.0 SDL_image>=2 glut>=4 curl>=8 \
		xcb-render xcb-shm

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crossfire/}

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		devel/sdl-image \
		graphics/freeglut \
		net/curl

USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm -lXi -lXmu" \
		ac_cv_path_SVNVERSION="" \
		sndio_sound="yes"
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
