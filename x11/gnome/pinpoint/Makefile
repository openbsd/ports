# $OpenBSD: Makefile,v 1.1.1.1 2015/08/12 06:23:39 ajacoutot Exp $

COMMENT=		simple presentation tool

GNOME_PROJECT=		pinpoint
GNOME_VERSION=		0.1.6

CATEGORIES=		graphics

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gst-3.0 cogl
WANTLIB += cogl-pango cogl-path drm fontconfig freetype gbm gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread rsvg-2
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/clutter/clutter-gst

# not ported yet
CONFIGURE_ARGS +=	--disable-dax

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pinpoint
	${INSTALL_DATA} ${WRKSRC}/introduction.pin \
		${PREFIX}/share/doc/pinpoint

.include <bsd.port.mk>
