# $OpenBSD: Makefile,v 1.73 2011/10/18 15:14:08 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME utility programs

GNOME_PROJECT=		gnome-utils
GNOME_VERSION=		3.2.1
REVISION=		0

SHARED_LIBS +=  gdict-1.0      6.1      # .6.7

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtop-2.0 kvm ltdl m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm z ffi dbus-1
WANTLIB += dbus-glib-1

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libgtop2
BUILD_DEPENDS= 		devel/gsettings-desktop-schemas
# gvfs needed by baobab
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/gvfs

MODULES=		devel/dconf \
			devel/gconf2 \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-utils

CONFIGURE_ARGS+=	--with-grep="/usr/bin/grep" \
			--enable-ipv6
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
USE_GROFF =		Yes

.include <bsd.port.mk>
