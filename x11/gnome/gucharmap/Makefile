# $OpenBSD: Makefile,v 1.45 2011/06/08 07:33:03 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		3.0.1
REVISION=		2

HOMEPAGE=		http://live.gnome.org/Gucharmap

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		devel/gobject-introspection

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=		gnu

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gucharmap

FLAVORS=		gtk2
FLAVOR?=

.if ${FLAVOR:L:Mgtk2}
SHARED_LIBS +=	gucharmap            2.0      # .7.0
CONFIGURE_ARGS+=	--with-gtk=2.0
LIB_DEPENDS+=		x11/gtk+2,-main
WANTLIB+=		gdk-x11-2.0 gtk-x11-2.0
.else
SHARED_LIBS +=  gucharmap_2_90            0.0 # 7.0
CONFIGURE_ARGS+=	--with-gtk=3.0
LIB_DEPENDS+=		x11/gtk+3,-main
WANTLIB+=		cairo-gobject gdk-3 gtk-3
.endif

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
