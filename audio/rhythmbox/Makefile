# $OpenBSD: Makefile,v 1.154 2016/04/28 11:13:15 ajacoutot Exp $

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.3.1
REVISION=		1

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi bz2 c cairo cairo-gobject
WANTLIB += dbus-1 drm enchant epoxy estdc++ expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpod graphite2 grilo-0.3 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstcontroller-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen icudata icui18n icuuc javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lzma lzo2 m notify orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 plist png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ tdb totem-plparser webkit2gtk-4.0 webp
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z

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
			www/webkitgtk4 \
			x11/gnome/grilo>=0.3.0 \
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
