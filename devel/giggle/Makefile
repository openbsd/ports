# $OpenBSD: Makefile,v 1.34 2014/04/01 18:06:28 jasper Exp $

COMMENT=	gtk-based git repository viewer

GNOME_VERSION=	0.6.2
GNOME_PROJECT=	giggle
REVISION=	2

CATEGORIES=	devel x11

SHARED_LIBS +=  giggle               0.0      # 0.0
SHARED_LIBS +=  giggle-git           0.0      # 0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

RUN_DEPENDS=	devel/git
BUILD_DEPENDS+=	devel/git
LIB_DEPENDS=	x11/gtksourceview3

MODGNOME_TOOLS += yelp  desktop-file-utils  gtk-update-icon-cache

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-evolution-data-server

# Disable the terminal for now: https://bugzilla.gnome.org/show_bug.cgi?id=662332
CONFIGURE_ARGS+=--disable-terminal

SUBST_VARS+=	GNOME_VERSION

# Remove a few compiler options GCC 4.2.1 doesn't understand.
pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/giggle/plugins/${GNOME_VERSION}/*.{a,la}

.include <bsd.port.mk>
