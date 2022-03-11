PORTROACH +=		limit:^1

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=		"-DG_CONST_RETURN=const"

COMMENT =		library for writing single instance GTK+2 applications

GNOME_PROJECT =		libunique
GNOME_VERSION =		1.1.6
REVISION =		14

SHARED_LIBS +=  unique-1.0           2.0      # .100.6
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += cairo dbus-1 dbus-glib-1 execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

EXTRACT_SUFX=		.tar.bz2

MODGNOME_TOOLS =	gobject-introspection

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-x

MODULES =		x11/gnome

# gtkdoc-rebase in gtk-doc.make and doc/reference/Makefile
BUILD_DEPENDS =		textproc/gtk-doc

LIB_DEPENDS =		x11/gtk+2 \
			x11/dbus-glib

pre-configure:
	sed -i 's,--libtool="\$$(top_builddir)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/unique/Makefile.in

.include <bsd.port.mk>
