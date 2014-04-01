# $OpenBSD: Makefile,v 1.28 2014/04/01 18:06:31 jasper Exp $

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.2.10
API=		0.2
SUBST_VARS=	API

SHARED_LIBS +=  grilo-0.2            2.0      # 6.0
SHARED_LIBS +=  grlnet-0.2           1.1      # 1.6
SHARED_LIBS +=	grlpls-0.2           0.0      # 0.0

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto curl dbus-1
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz idn
WANTLIB += lzma m nspr4 nss3 oauth pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 totem-plparser
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsoup \
		net/liboauth \
		x11/gnome/totem-pl-parser \
		x11/gtk+3

MODGNOME_TOOLS += gobject-introspection vala
# Own the grilo plugins directory to prevent warnings that this
# directory does not exist when no plugin is installed.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/grilo-${API}

.include <bsd.port.mk>
