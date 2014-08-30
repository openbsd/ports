# $OpenBSD: Makefile,v 1.1.1.1 2014/08/30 12:29:07 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		library for AppStream metadata

DISTNAME=		appstream-glib-0.2.5
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=	appstream-builder         0.0 # 6.6
SHARED_LIBS +=	appstream-glib            0.0 # 6.6

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://people.freedesktop.org/~hughsient/appstream-glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 xcb xcb-render
WANTLIB += xcb-shm xml2 z

MASTER_SITES=		http://people.freedesktop.org/~hughsient/appstream-glib/releases/

MODULES=		devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		docbook

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS=		archivers/libarchive \
			devel/libsoup \
			x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-rpm

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

post-install:
	rm ${PREFIX}/lib/asb-plugins/*.{a,la}

.include <bsd.port.mk>
