# $OpenBSD: Makefile,v 1.133 2014/03/28 09:30:34 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.0.2

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += enchant expat ffi fontconfig freetype gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error gpod graphite2
WANTLIB += grilo-0.2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstcontroller-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 plist png pthread
WANTLIB += pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += stdc++ tdb totem-plparser webkitgtk-3.0 webp xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
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
			www/webkit,gtk3 \
			x11/gnome/grilo \
			x11/gnome/totem-pl-parser

# context plugin
RUN_DEPENDS +=		www/py-mako${MODPY_FLAVOR}

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

# rbzeitgeist plugin
RUN_DEPENDS +=		productivity/zeitgeist

# needed for flac support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good

# needed for mp3 support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-ugly

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	gi vala yelp
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--disable-static \
			--without-brasero \
			--without-hal \
			--without-gudev \
			--disable-fm-radio \
			--disable-lirc

# XXX requires libdmapsharing
CONFIGURE_ARGS +=	--disable-daap

# XXX requires hal|udev
CONFIGURE_ARGS +=	--without-mtp

# XXX requires libmx
CONFIGURE_ARGS +=	--disable-visualizer

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/rhythmbox/{,sample-}plugins/*/*.la
	rm ${PREFIX}/lib/mozilla/plugins/*.la
	# XXX hangs: check at next upgrade of rhythmbox
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain
	# requires cdda support in gvfs -> HAL/gudev
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/audiocd

.include <bsd.port.mk>
