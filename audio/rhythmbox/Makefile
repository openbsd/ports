COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.4.4
REVISION=		4

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender archive
WANTLIB += atk-1.0 atk-bridge-2.0 avahi-client avahi-common avahi-glib
WANTLIB += b2 brotlicommon brotlidec bz2 c cairo cairo-gobject
WANTLIB += charset crypto dbus-1 dmapsharing-3.0 epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 grilo-0.3 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstcontroller-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv idn2 intl jpeg json-glib-1.0 lz4 lzma
WANTLIB += m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png psl secret-1
WANTLIB += soup-2.4 sqlite3 tdb totem-plparser uchardet unistring
WANTLIB += xcb xcb-render xcb-shm xml2 z zstd

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

# needed for the tests
BUILD_DEPENDS +=	devel/check

LIB_DEPENDS=		databases/tdb \
			devel/json-glib \
			devel/libnotify \
			devel/libpeas \
			multimedia/gstreamer1/plugins-base \
			x11/gnome/grilo \
			x11/gnome/libdmapsharing \
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

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--without-brasero \
			--without-gudev \
			--without-ipod \
			--disable-fm-radio \
			--disable-lirc

# XXX requires udev|gvfs-mtp
CONFIGURE_ARGS +=	--without-mtp

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/rhythmbox/{,sample-}plugins/*/*.la
	rm ${PREFIX}/lib/rhythmbox/sample-plugins/*/*.a
	# XXX hangs: check at next rhythmbox update
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain

.include <bsd.port.mk>
