# $OpenBSD: Makefile,v 1.60 2010/10/11 08:11:17 jasper Exp $

# coherence plugin is installed but not activated by default so we don't
# enforce dependency on multimedia/coherence to lower requirements

COMMENT=		music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		0.12.8

REVISION =		8

SHARED_LIBS +=  rhythmbox-core       0.0      # .0.0

CATEGORIES=		audio

HOMEPAGE=		http://www.rhythmbox.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp ffi
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 notify c cairo
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig gnutls freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 gmime-2.4 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring avahi-glib gpod gobject-2.0
WANTLIB += gpg-error gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10   gthread-2.0 gtk-x11-2.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png proxy
WANTLIB += pthread pthread-stubs soup-2.4 sqlite3 tasn1 util xcb xml2 z
WANTLIB += eggdbus-1 xcb-render xcb-render-util gnome-media-profiles
WANTLIB += totem-plparser soup-gnome-2.4 avahi-client avahi-common

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/gconf2

BUILD_DEPENDS=		::multimedia/gstreamer-0.10/py-gstreamer
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			::devel/libnotify \
			::x11/gnome/media \
			::x11/gnome/totem-pl-parser \
			::multimedia/gstreamer-0.10/plugins-base \
			::devel/libsoup,-gnome \
			::net/avahi \
			::audio/libgpod
RUN_DEPENDS+=		::x11/gnome/icon-theme \
			::multimedia/gstreamer-0.10/py-gstreamer

# needed for the magnatune plugin
RUN_DEPENDS+=		::x11/gnome/py-gnome-desktop
# needed for sndio
RUN_DEPENDS+=		::multimedia/gstreamer-0.10/plugins-good

REGRESS_DEPENDS=	::devel/check

USE_X11=		Yes
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
			--disable-scrollkeeper \
			--without-hal \
			--without-libbrasero-media \
			--without-libnautilus-burn \
			--disable-vala \
			--disable-fm-radio \
			--disable-lirc

# requires libmtp >= 0.3
CONFIGURE_ARGS+=	--without-mtp

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# XXX TODO: plugins subpackage
CONFIGURE_ARGS+=	--disable-browser-plugin
CONFIGURE_ENV+=		MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
