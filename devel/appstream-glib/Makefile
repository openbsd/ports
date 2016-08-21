# $OpenBSD: Makefile,v 1.14 2016/08/21 12:27:46 ajacoutot Exp $

COMMENT=		library for AppStream metadata

DISTNAME=		appstream-glib-0.6.1
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  appstream-glib       2.1      # 8.9
SHARED_LIBS +=  appstream-builder    2.0      # 8.9

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://people.freedesktop.org/~hughsient/appstream-glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto dbus-1 epoxy
WANTLIB += expat ffi fontconfig freetype gcab-1.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += lz4 lzma lzo2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += uuid xcb xcb-render xcb-shm xml2 yaml-0 z

MASTER_SITES=		http://people.freedesktop.org/~hughsient/appstream-glib/releases/

MODULES=		textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		docbook

USE_GMAKE=		Yes

BUILD_DEPENDS=		archivers/gcab \
			devel/gperf

RUN_DEPENDS=		archivers/gcab

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libsoup \
			devel/libyaml \
			sysutils/e2fsprogs \
			x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-rpm

# requires libstemmer
CONFIGURE_ARGS +=	--disable-stemmer

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

post-install:
	rm ${PREFIX}/lib/asb-plugins-5/*.{a,la}

.include <bsd.port.mk>
