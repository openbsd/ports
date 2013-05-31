# $OpenBSD: Makefile,v 1.42 2013/05/31 15:34:42 ajacoutot Exp $

COMMENT =		user interface builder for the GTK2+ toolkit
SHARED_ONLY =		Yes

GNOME_VERSION =		3.8.3
GNOME_PROJECT = 	glade3
REVISION =		0

CATEGORIES =		devel
SHARED_LIBS +=  gladeui-1            1.0      # 10.0

HOMEPAGE =		http://glade.gnome.org/

# GPLv2, with exception of png images under:
# plugins/{gtk+,gnome}/icons (which are LGPL)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo canberra crypto dbus-1 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread pthread-stubs ssl util
WANTLIB += vorbis vorbisfile xcb xcb-render xml2 ffi stdc++
WANTLIB += z dbus-glib-1 gnomeui-2 GL Xxf86vm drm xcb-shm
WANTLIB += harfbuzz

MODULES =		devel/gettext \
			x11/gnome

LIB_DEPENDS =		x11/dbus-glib \
			x11/gnome/libgnomeui
RUN_DEPENDS =		x11/gnome/devhelp

MODGNOME_DESKTOP_FILE = Yes
MODGNOME_ICON_CACHE =	Yes
MODGNOME_TOOLS =	yelp

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-python
MODGNOME_CPPFLAGS =	-pthread
MODGNOME_LDFLAGS =	-pthread

# make it possible to install alongside devel/glade
MAKE_FLAGS =		DOC_ID=glade3 \
			TARGET_DIR=${PREFIX}/share/gtk-doc/html/gladeui3

post-install:
	rm ${PREFIX}/lib/glade3/modules/*.{a,la}

.include <bsd.port.mk>
