# $OpenBSD: Makefile,v 1.125 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		12.0.1

SHARED_LIBS +=  gucharmap_2_90            7.0 # 7.0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection vala yelp

BUILD_DEPENDS=		archivers/unzip \
			textproc/unicode-ucd>=9.0.0
LIB_DEPENDS=		x11/gtk+3,-main

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS +=	--with-unicode-data=${LOCALBASE}/share/unicode/ucd/
# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
