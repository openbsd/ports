# $OpenBSD: Makefile,v 1.23 2013/10/26 08:02:57 ajacoutot Exp $

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.2.7
API=		0.2
SUBST_VARS=	API
REVISION=	2

SHARED_LIBS +=  grilo-0.2            1.0      # 5.0
SHARED_LIBS +=  grlnet-0.2           1.0      # 1.5

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz idn m nspr4 nss3 oauth pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsoup \
		net/liboauth \
		x11/gtk+3

MODGNOME_TOOLS= gi vala

# XXX: Remove when updating to the next release which merges in patch-configure_ac
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

# Own the grilo plugins directory to prevent warnings that this
# directory does not exist when no plugin is installed.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/grilo-${API}

.include <bsd.port.mk>
