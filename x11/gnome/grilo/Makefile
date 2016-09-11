# $OpenBSD: Makefile,v 1.44 2016/09/11 13:11:57 jasper Exp $

# XXX: PORTROACH overriden at end of this file.

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.3.2
API=		0.3

SUBST_VARS=	API

SHARED_LIBS +=  grilo-0.3            0.1      # 0.0
SHARED_LIBS +=  grlnet-0.3           0.0      # 0.0
SHARED_LIBS +=	grlpls-0.3           0.0      # 0.0

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto curl dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += idn intl lz4 lzma lzo2 m nghttp2 nspr4 nss3 oauth pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 totem-plparser xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=	x11/gnome

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

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=	#empty
