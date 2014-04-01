# $OpenBSD: Makefile,v 1.53 2014/04/01 15:31:46 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	gettext(1) files editor for GNOME

GNOME_PROJECT=	gtranslator
GNOME_VERSION=	2.91.6
REVISION=	4

CATEGORIES=	textproc devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gda-5.0 gdict-1.0 gdk-3 gdk_pixbuf-2.0 gdl-3
WANTLIB += gettextpo gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf \
		lang/python

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/iso-codes
BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/iso-codes

LIB_DEPENDS=	devel/gobject-introspection \
		devel/json-glib \
		devel/libpeas \
		x11/gnome/gdl \
		x11/gtksourceview3 \
		x11/gnome/dictionary \
		x11/gnome/libgda

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	gobject-introspection yelp
MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/db4

CONFIGURE_STYLE=gnu

# XXX needs to be ported to gtkspell3
CONFIGURE_ARGS += --without-gtkspell3

post-install:
	rm ${PREFIX}/lib/gtranslator/*.{a,la}
	rm ${PREFIX}/lib/gtranslator/plugins/*.{a,la}

.include <bsd.port.mk>
