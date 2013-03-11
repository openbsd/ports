# $OpenBSD: Makefile,v 1.45 2013/03/11 11:44:41 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		collection of extensions for Epiphany

GNOME_PROJECT=		epiphany-extensions
GNOME_VERSION=		3.4.0
REVISION=		2

M=			${GNOME_VERSION:R}
SUBST_VARS=		M

CATEGORIES=		www

HOMEPAGE=		http://projects.gnome.org/epiphany/extensions

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 icudata icui18n icuuc javascriptcoregtk-3.0 jpeg
WANTLIB += m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs soup-2.4 sqlite3 stdc++
WANTLIB += webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += atk-bridge-2.0 atspi harfbuzz icule pthread

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/epiphany>=3.4.0.1
LIB_DEPENDS=	www/webkit,gtk3

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_TOOLS= yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-extensions=default

# part of ALL_EXTENSIONS, not DEFAULT
CONFIGURE_ARGS += --disable-opensp

post-install:
	rm ${PREFIX}/lib/epiphany/${M}/extensions/*.la

.include <bsd.port.mk>
