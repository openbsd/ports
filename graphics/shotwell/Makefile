# $OpenBSD: Makefile,v 1.36 2013/11/25 14:16:23 sthen Exp $

COMMENT =	digital photo organizer

V =		0.15.0
DISTNAME =	shotwell-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics
MASTER_SITES =	http://yorba.org/download/shotwell/${V:C/^([0-9]+\.[0-9]+).*/\1/}/
HOMEPAGE =	http://yorba.org/shotwell/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject exif exiv2 fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += javascriptcoregtk-3.0 json-glib-1.0 lcms2 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs raw rest-0.7 soup-2.4 sqlite3 stdc++
WANTLIB += webkitgtk-3.0 xcb xcb-render xcb-shm xml2 z

MODULES =	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS = 	vala yelp
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes

LIB_DEPENDS =	devel/json-glib \
		devel/libgee \
		graphics/libgexiv2 \
		graphics/libgphoto2 \
		graphics/libraw \
		net/librest \
		www/webkit,gtk3

# beware: configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-desktop-update \
			--disable-icon-update

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
