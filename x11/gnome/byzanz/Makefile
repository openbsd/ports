# $OpenBSD: Makefile,v 1.14 2011/09/28 09:47:46 jasper Exp $

COMMENT=		simple desktop recording tool

# git clone of b5a46ddca3b2b207f7f6ba444f9e0f02dc23128e
GNOME_VERSION=		0.2.3.1
GNOME_PROJECT=		byzanz
REVISION=	0

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

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-3 m panel-applet-4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

LIB_DEPENDS=		x11/gnome/panel>=3.0.0 \
			multimedia/gstreamer-0.10/plugins-base

MODGCONF2_SCHEMAS_DIR=	byzanz

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
