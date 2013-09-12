# $OpenBSD: Makefile,v 1.125 2013/09/12 09:12:13 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.0
REVISION=		0

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

HOMEPAGE=		http://projects.gnome.org/rhythmbox/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto curl dbus-1
WANTLIB += dbus-glib-1 enchant expat ffi fontconfig freetype gailutil-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpod graphite2 grilo-0.2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstcontroller-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu icudata icui18n icuuc idn javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 lua5.1 lzma m notify orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 plist png pthread pthread-stubs quvi secret-1
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 ssl stdc++ tdb totem-plparser
WANTLIB += webkitgtk-3.0 webp xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z

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

# grilo plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

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
