# $OpenBSD: Makefile,v 1.113 2013/03/31 14:41:00 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		2.98
REVISION=		4

SHARED_LIBS +=  rhythmbox-core       0.0      # .0.0

CATEGORIES=		audio

HOMEPAGE=		http://projects.gnome.org/rhythmbox/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender archive
WANTLIB += atk-1.0 bz2 c cairo cairo-gobject dbus-1 expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpod graphite2
WANTLIB += gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gsttag-0.10 gthread-2.0
WANTLIB += gtk-3 json-glib-1.0 lzma m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 plist
WANTLIB += png pthread pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += tdb totem-plparser xcb xcb-render xcb-shm xml2
WANTLIB += z crypto curl idn lua5.1 quvi ssl icuuc
WANTLIB += atk-bridge-2.0 atspi grilo-0.2 harfbuzz icudata icule

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/dconf

BUILD_DEPENDS=		audio/libmusicbrainz \
			devel/py-gobject3

# needed for the tests
BUILD_DEPENDS +=	devel/check

LIB_DEPENDS=		audio/libgpod \
			databases/tdb \
			devel/json-glib \
			devel/libnotify>=0.7.2 \
			devel/libpeas \
			multimedia/gstreamer-0.10/plugins-base \
			x11/gnome/grilo \
			x11/gnome/totem-pl-parser

RUN_DEPENDS=		audio/libmusicbrainz \
			devel/py-gobject3 \
			multimedia/gstreamer-0.10/py-gstreamer \
			www/py-mako \
			x11/dbus-python

# needed for sndio(7) support
RUN_DEPENDS +=		multimedia/gstreamer-0.10/plugins-good
# needed for mp3 support
RUN_DEPENDS +=		multimedia/gstreamer-0.10/plugins-ugly

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	goi vala yelp
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--disable-static \
			--without-brasero \
			--without-hal \
			--without-gudev \
			--without-webkit \
			--disable-fm-radio \
			--disable-lirc

# XXX requires libdmapsharing
CONFIGURE_ARGS +=	--disable-daap --without-mdns

# XXX requires hal|udev
CONFIGURE_ARGS +=	--without-mtp

# XXX requires new clutter-{x11,gst,gtk} and libmx
CONFIGURE_ARGS +=	--disable-visualizer

# XXX plugins subpackage?
CONFIGURE_ARGS +=	--disable-browser-plugin
CONFIGURE_ENV +=	MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/rhythmbox/{,sample-}plugins/*/*.la
	# XXX segfault: check at next upgrade of rhythmbox
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain

.include <bsd.port.mk>
