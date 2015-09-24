# $OpenBSD: Makefile,v 1.2 2015/09/24 12:06:57 ajacoutot Exp $

COMMENT=		simple presentation tool

GNOME_PROJECT=		pinpoint
GNOME_VERSION=		0.1.8

CATEGORIES=		graphics

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gst-3.0 clutter-gtk-1.0
WANTLIB += cogl cogl-pango cogl-path drm gbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 gtk-3 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pthread rsvg-2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk

# not ported yet
CONFIGURE_ARGS +=	--disable-dax

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pinpoint
	${INSTALL_DATA} ${WRKSRC}/introduction.pin \
		${PREFIX}/share/doc/pinpoint

.include <bsd.port.mk>
