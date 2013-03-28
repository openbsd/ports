# $OpenBSD: Makefile,v 1.94 2013/03/28 21:14:28 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		official media player for GNOME
COMMENT-nautilus=	totem properties plugin for nautilus

GNOME_PROJECT=		totem
GNOME_VERSION=		3.6.3

PKGNAME-main=		${DISTNAME}
PKGNAME-nautilus=	nautilus-${DISTNAME}

REVISION-main=		1

SHARED_LIBS +=  totem                     0.0 # 0.0

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/totem/

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -nautilus

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi bz2 cairo cairo-gobject
WANTLIB += clutter-1.0 clutter-gst-2.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += crypto curl dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz icudata icule icuuc idn json-glib-1.0 lua5.1
WANTLIB += lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += quvi soup-2.4 soup-gnome-2.4 sqlite3 ssl stdc++ totem-plparser
WANTLIB += xcb xcb-render xcb-shm xml2 z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c grilo-0.2 zeitgeist-2.0

WANTLIB-nautilus += ${WANTLIB}
WANTLIB-nautilus += nautilus-extension

BUILD_DEPENDS=	 	devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad>=1.0.0p0 # soundtouch

# needed for make check
BUILD_DEPENDS +=	devel/pylint

RUN_DEPENDS-main=	devel/py-gobject3 \
			devel/py-xdg \
			x11/dbus-python \
			x11/gnome/grilo-plugins \
			${RUN_DEPENDS}

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			x11/gnome/totem-pl-parser>=3.4.3 \
			devel/gobject-introspection \
			devel/libpeas \
			graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk \
			productivity/zeitgeist \
			x11/gnome/grilo>=0.2.0

RUN_DEPENDS-nautilus=	x11/gnome/totem,-main=${GNOME_VERSION}
LIB_DEPENDS-nautilus=	x11/gnome/nautilus \
			x11/gnome/totem-pl-parser

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS-main+=multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-bad>=1.0.0p0 # soundtouch

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		goi vala yelp

LIBTOOL_FLAGS=		--tag=disable-static

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf

CONFIGURE_ARGS=	--disable-static \
		--disable-browser-plugins \
		--disable-gmp-plugin \
		--disable-narrowspace-plugin \
		--disable-mully-plugin \
		--disable-cone-plugin \
		--disable-vegas-plugin

post-install:
	rm ${PREFIX}/lib/totem/plugins/*/*.la
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

.include <bsd.port.mk>
