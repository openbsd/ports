# $OpenBSD: Makefile,v 1.10 2015/07/21 04:27:23 ajacoutot Exp $

PORTROACH=		limitw:1,even
SHARED_ONLY=		Yes

COMMENT=		library for AppStream metadata

DISTNAME=		appstream-glib-0.4.1
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  appstream-glib       1.0      # 7.5
SHARED_LIBS +=  appstream-builder    1.0      # 7.5

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://people.freedesktop.org/~hughsient/appstream-glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz lzma lzo2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 xcb xcb-render xcb-shm xml2 yaml-0
WANTLIB += z

MASTER_SITES=		http://people.freedesktop.org/~hughsient/appstream-glib/releases/

MODULES=		devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		docbook

USE_GMAKE=		Yes

BUILD_DEPENDS=		archivers/gcab \
			devel/gperf

RUN_DEPENDS=		archivers/gcab

LIB_DEPENDS=		archivers/libarchive \
			devel/libsoup \
			devel/libyaml \
			x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ostree \
			--disable-rpm

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

post-install:
	rm ${PREFIX}/lib/asb-plugins-2/*.{a,la}

.include <bsd.port.mk>
