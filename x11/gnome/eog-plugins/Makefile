# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 20:37:20 jasper Exp $

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		2.28.0
CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/EyeOfGnome/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo clutter-glx-1.0 clutter-gtk-0.10 dbus-1 dbus-glib-1
WANTLIB += drm exif expat fontconfig freetype gconf-2 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=    	champlain-0.4,champlain-gtk-0.4:libchamplain->=0.4.0:geo/libchamplain/core \
			gnutls::security/gnutls
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:eog->=2.28.0:x11/gnome/eog

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	eog-plugins
CONFIGURE_ARGS+=	--with-plugins=all
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
.include <bsd.port.mk>
