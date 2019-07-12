# $OpenBSD: Makefile,v 1.37 2019/07/12 20:44:40 sthen Exp $

PORTROACH +=		limit:^1

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=		"-DG_CONST_RETURN=const"

COMMENT =		library for writing single instance GTK+2 applications

GNOME_PROJECT =		libunique
GNOME_VERSION =		1.1.6
REVISION =		13

SHARED_LIBS +=  unique-1.0           2.0      # .100.6
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

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
