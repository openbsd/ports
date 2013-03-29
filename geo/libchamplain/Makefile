# $OpenBSD: Makefile,v 1.10 2013/03/29 18:15:18 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.3
REVISION=	5
API_VERSION=	0.12

SHARED_LIBS +=  champlain-0.12       0.0      # 1.1
SHARED_LIBS +=  champlain-gtk-0.12   0.0      # 1.1

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

HOMEPAGE=	http://projects.gnome.org/libchamplain/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango dbus-1 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz icudata icule
WANTLIB += icuuc json-glib-1.0 m memphis-0.2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIBTOOL_FLAGS=		--tag=disable-static

LIB_DEPENDS=		devel/libsoup,-gnome \
			geo/memphis \
			graphics/clutter/clutter-gtk>=1.2.0

MODGNOME_TOOLS=		goi

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/.libs/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.{c,py} \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
