# $OpenBSD: Makefile,v 1.41 2015/05/05 17:00:16 sthen Exp $

COMMENT=	gtk-based git repository viewer

GNOME_VERSION=	0.7
GNOME_PROJECT=	giggle
REVISION=	3

CATEGORIES=	devel x11

SHARED_LIBS +=  giggle               0.0      # 0.0
SHARED_LIBS +=  giggle-git           0.0      # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs vte-2.91 xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

RUN_DEPENDS=	devel/git
BUILD_DEPENDS+=	devel/git
LIB_DEPENDS=	x11/gtksourceview3 devel/vte3

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-evolution-data-server

SUBST_VARS+=	GNOME_VERSION

# Remove a few compiler options GCC 4.2.1 doesn't understand.
pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wabi,,g;' \
		-e 's,-Wdeprecated ,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/giggle/plugins/${GNOME_VERSION}/*.{a,la}

.include <bsd.port.mk>
