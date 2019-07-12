# $OpenBSD: Makefile,v 1.44 2019/07/12 20:46:05 sthen Exp $

COMMENT=	simple GTK+ text editor

DISTNAME=	leafpad-0.8.18.1
REVISION=	7
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=leafpad/}


MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
