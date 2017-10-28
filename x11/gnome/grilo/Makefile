# $OpenBSD: Makefile,v 1.51 2017/10/28 08:39:42 ajacoutot Exp $

# XXX: PORTROACH overriden at end of this file.

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.3.4
API=		0.3
REVISION=	2

SUBST_VARS=	API

SHARED_LIBS +=  grilo-0.3            0.1      # 0.0
SHARED_LIBS +=  grlnet-0.3           0.0      # 0.0
SHARED_LIBS +=	grlpls-0.3           0.0      # 0.0

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xtst archive assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto curl dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmime-3.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme-pthread graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv idn intl lz4 lzma m nghttp2 nspr4 nss3
WANTLIB += oauth pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread smime3 softokn3 soup-2.4 sqlite3
WANTLIB += ssl ssl3 totem-plparser xcb xcb-render xcb-shm xcb-xkb
WANTLIB += xkbcommon xkbcommon-x11 xml2 z

MODULES=	x11/gnome

LIB_DEPENDS=	devel/libsoup \
		net/liboauth \
		x11/gnome/totem-pl-parser \
		x11/gtk+3

MODGNOME_TOOLS=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

# Own the grilo plugins directory to prevent warnings that this
# directory does not exist when no plugin is installed.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/grilo-${API}

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=	#empty
