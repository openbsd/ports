# $OpenBSD: Makefile,v 1.157 2016/09/10 09:55:34 ajacoutot Exp $

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.4.1

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto dbus-1 epoxy
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpod graphite2 grilo-0.3 gstaudio-1.0
WANTLIB += gstbase-1.0 gstcontroller-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl json-glib-1.0 lz4 lzma lzo2 m notify orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 plist png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tdb totem-plparser xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

# needed for the tests
BUILD_DEPENDS +=	devel/check

LIB_DEPENDS=		audio/libgpod \
			databases/tdb \
			devel/json-glib \
			devel/libnotify \
			devel/libpeas \
			multimedia/gstreamer1/plugins-base \
			x11/gnome/grilo \
			x11/gnome/totem-pl-parser

# context plugin
RUN_DEPENDS +=		www/py-mako${MODPY_FLAVOR}

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins>=0.3.0

# needed for flac support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good

# needed for mp3 support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-libav

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += vala yelp

MODGNOME_LDFLAGS=	-L${X11BASE}/lib
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--without-brasero \
			--without-hal \
			--without-gudev \
			--disable-fm-radio \
			--disable-lirc

# XXX requires libdmapsharing
CONFIGURE_ARGS +=	--disable-daap

# XXX requires hal|udev|gvfs-mtp
CONFIGURE_ARGS +=	--without-mtp

# XXX requires libmx
CONFIGURE_ARGS +=	--disable-visualizer

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/rhythmbox/{,sample-}plugins/*/*.la
	rm ${PREFIX}/lib/rhythmbox/sample-plugins/*/*.a
	rm ${PREFIX}/lib/mozilla/plugins/*.{a,la}
	# XXX hangs: check at next rhythmbox update
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain

.include <bsd.port.mk>
