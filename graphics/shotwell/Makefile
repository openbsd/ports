# $OpenBSD: Makefile,v 1.34 2013/09/24 10:24:43 jasper Exp $

# needs to allocate 512M
VMEM_WARNING =	Yes

COMMENT =	digital photo organizer

V =		0.14.1
DISTNAME =	shotwell-${V}
REVISION =	0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics
MASTER_SITES =	http://yorba.org/download/shotwell/${V:C/^([0-9]+\.[0-9]+).*/\1/}/
HOMEPAGE =	http://yorba.org/shotwell/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject exif exiv2 fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee gexiv2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gthread-2.0 gtk-3 harfbuzz javascriptcoregtk-3.0
WANTLIB += json-glib-1.0 lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs raw rest-0.7
WANTLIB += soup-2.4 sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES =	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS = 	vala yelp
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes

LIB_DEPENDS =	devel/json-glib \
		devel/libgee06 \
		graphics/libgexiv2>=0.6.1 \
		graphics/libgphoto2 \
		graphics/libraw \
		net/librest \
		www/webkit,gtk3>=2.0.0

# beware: configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-desktop-update \
			--disable-icon-update

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
