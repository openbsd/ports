# $OpenBSD: Makefile,v 1.92 2013/03/11 11:46:10 espie Exp $

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.6.2

CATEGORIES=		graphics

HOMEPAGE=		https://live.gnome.org/EyeOfGnome/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject croco-0.6 drm exempi exif expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 xcb xcb-render xcb-shm xml2 z
WANTLIB += gnome-desktop-3 lcms2 stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc xkbfile

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		devel/libpeas \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/desktop \
			graphics/lcms2
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			misc/shared-mime-info \
			x11/gnome/icon-theme

MODGNOME_TOOLS= 	goi yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ARGS+=	--with-xmp \
			--with-libexif

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
