# $OpenBSD: Makefile,v 1.147 2015/04/19 10:22:01 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.2.1

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 enchant epoxy
WANTLIB += expat ffi fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpod graphite2 grilo-0.2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstcontroller-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu icudata icui18n
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0 lzma
WANTLIB += m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 plist png pthread
WANTLIB += pthread-stubs secret-1 soup-2.4 sqlite3 stdc++ tdb
WANTLIB += totem-plparser webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z lzo2

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

# XXX requires hal|udev
CONFIGURE_ARGS +=	--without-mtp

# XXX requires libmx
CONFIGURE_ARGS +=	--disable-visualizer

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/rhythmbox/{,sample-}plugins/*/*.la
	rm ${PREFIX}/lib/rhythmbox/sample-plugins/*/*.a
	rm ${PREFIX}/lib/mozilla/plugins/*.{a,la}
	# XXX hangs: check at next upgrade of rhythmbox
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain

.include <bsd.port.mk>
