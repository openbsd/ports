# $OpenBSD: Makefile,v 1.29 2013/03/11 10:50:04 espie Exp $

COMMENT=	gtk-based git repository viewer

GNOME_VERSION=	0.6.2
GNOME_PROJECT=	giggle

CATEGORIES=	devel x11

SHARED_LIBS +=  giggle               0.0      # 0.0
SHARED_LIBS +=  giggle-git           0.0      # 0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://live.gnome.org/giggle

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc # vte2_90

RUN_DEPENDS=	devel/git
BUILD_DEPENDS+=	devel/git
LIB_DEPENDS=	x11/gtksourceview3

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
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

.include <bsd.port.mk>
