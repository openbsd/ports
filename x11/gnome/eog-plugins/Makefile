# $OpenBSD: Makefile,v 1.32 2012/05/28 16:08:00 jasper Exp $

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.4.1

CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/EyeOfGnome/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += crypto dbus-1 drm exif expat ffi fontconfig freetype
WANTLIB += gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 idn m nspr4 nss3 oauth pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 pixman-1
WANTLIB += plc4 plds4 png pthread-stubs smime3 softokn3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 xcb xcb-render xcb-shm
WANTLIB += xml2 z curl idn stdc++

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			graphics/libexif
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/eog>=${GNOME_VERSION}

# XXX: All plugins minus 'map' which requires libchamplain -> clutter
PLUGINS=		fit-to-width,exif-display,send-by-mail,postasa

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS+=	--enable-python \
			--with-plugins=${PLUGINS}

.include <bsd.port.mk>
