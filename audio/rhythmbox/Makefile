# $OpenBSD: Makefile,v 1.70 2011/04/21 07:04:56 ajacoutot Exp $

# coherence plugin is installed but not activated by default so we don't
# enforce dependency on multimedia/coherence to lower requirements

COMMENT=		music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		0.12.8

REVISION =		11

SHARED_LIBS +=  rhythmbox-core       0.0      # .0.0

CATEGORIES=		audio

HOMEPAGE=		http://projects.gnome.org/rhythmbox/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmime-2.4 gmodule-2.0 gnome-keyring gnome-media-profiles
WANTLIB += gobject-2.0 gpg-error gpod gstbase-0.10 gstcontroller-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 totem-plparser
WANTLIB += util xcb xcb-render xcb-shm xml2 z
WANTLIB += ${MODPY_WANTLIB}

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/gconf2

BUILD_DEPENDS=		multimedia/gstreamer-0.10/py-gstreamer
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/libnotify>=0.7.2 \
			x11/gnome/media \
			x11/gnome/totem-pl-parser \
			multimedia/gstreamer-0.10/plugins-base \
			devel/libsoup,-gnome \
			net/avahi \
			audio/libgpod
RUN_DEPENDS+=		x11/gnome/icon-theme \
			multimedia/gstreamer-0.10/py-gstreamer

# needed for the magnatune plugin
RUN_DEPENDS+=		x11/gnome/py-gnome-desktop
# needed for sndio
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-good

REGRESS_DEPENDS=	devel/check

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	rhythmbox

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-silent-rules \
			--with-database=tree \
			--with-gnome-keyring \
			--with-mdns=avahi \
			--with-x \
			--enable-python \
			--enable-daap \
			--without-hal \
			--without-libbrasero-media \
			--without-libnautilus-burn \
			--disable-fm-radio \
			--disable-lirc

# XXX needs vala<=0.10, ours is too new
CONFIGURE_ARGS +=	--disable-vala

USE_GROFF =	Yes

# requires libmtp >= 0.3
CONFIGURE_ARGS+=	--without-mtp

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# XXX TODO: plugins subpackage
CONFIGURE_ARGS+=	--disable-browser-plugin
CONFIGURE_ENV+=		MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
