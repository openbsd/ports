#$OpenBSD: Makefile,v 1.34 2010/10/11 08:14:42 jasper Exp $

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	2.12.0
REVISION=	0

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/gthumb

MAINTAINER=	Guillaume Protet <guillaume.protet@mortheres.info>	

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 drm expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sqlite3 tiff xcb xcb-render xcb-render-util
WANTLIB += xml2 z unique-1.0 gstinterfaces-0.10 soup-gnome-2.4 soup-2.4
WANTLIB += gphoto2 gphoto2_port json-glib-1.0 gnutls proxy tasn1
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10

MODULES=	x11/gnome \
		devel/gettext \
		devel/gconf2

LIB_DEPENDS=	::devel/json-glib \
		::devel/libsoup,-gnome \
		::devel/libunique \
		::graphics/clutter/clutter-gtk \
		::graphics/libgphoto2 \
		::multimedia/gstreamer-0.10/plugins-base
RUN_DEPENDS=	::misc/shared-mime-info

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	gthumb

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper \
		--disable-iptcdata \
		--disable-libopenraw

.include <bsd.port.mk>
