# $OpenBSD: Makefile,v 1.18 2012/04/17 10:51:11 jasper Exp $

COMMENT=		simple desktop recording tool

# git clone of b362a1af7cd50f5752ec1114311fe24a188b31d1
GNOME_VERSION=		0.2.3.2
GNOME_PROJECT=		byzanz

CATEGORIES=		multimedia

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=		http://distfiles.nl/

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-3 m panel-applet-4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z dbus-1 dbus-glib-1 ffi stdc++

LIB_DEPENDS=		x11/gnome/panel>=3.0.0 \
			multimedia/gstreamer-0.10/plugins-base

MODGCONF2_SCHEMAS_DIR=	byzanz
MODGNOME_ICON_CACHE=	Yes

#
# Remove this and patch-configure_ac when updating to
# a real release:
#

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			x11/gnome/common

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
