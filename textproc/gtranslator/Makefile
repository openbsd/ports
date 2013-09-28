# $OpenBSD: Makefile,v 1.50 2013/09/28 08:50:38 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	gettext(1) files editor for GNOME

GNOME_PROJECT=	gtranslator
GNOME_VERSION=	2.91.6
REVISION=	2

CATEGORIES=	textproc devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gcrypt gda-5.0 gdict-1.0
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdl-3 gettextpo gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 stdc++ xcb xcb-render xcb-shm xml2 z

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
MODGNOME_TOOLS= 	gi yelp
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/db4

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-liconv -lintl"
CONFIGURE_ARGS=	--with-dictionary \
		--with-gda=5.0

# XXX needs to be ported to gtkspell3
CONFIGURE_ARGS += --without-gtkspell

.include <bsd.port.mk>
