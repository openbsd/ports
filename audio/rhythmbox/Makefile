# $OpenBSD: Makefile,v 1.47 2009/11/29 09:25:27 ajacoutot Exp $

COMMENT=		music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		0.12.6
PKGNAME=		${DISTNAME}p0

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

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 glitz gmime-2.4 gmodule-2.0 gnome-keyring
WANTLIB += gnutls gobject-2.0 gpg-error gssapi gstbase-0.10 gstcontroller-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gsttag-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 krb5 m neon pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 ssl tasn1 util xcb xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/gconf2

BUILD_DEPENDS=		:gstreamer-gnome->=0.10.25:multimedia/gstreamer-0.10/plugins-base,-gnome \
			::multimedia/gstreamer-0.10/py-gstreamer
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			musicbrainz3::audio/libmusicbrainz \
			notify::devel/libnotify \
			gnome-media-profiles::x11/gnome/media \
			totem-plparser:totem-pl-parser->=2.28.1:x11/gnome/totem-pl-parser \
			gstcdda-0.10:gstreamer-cdda->=0.10.25:multimedia/gstreamer-0.10/plugins-base,-cdda \
			soup-gnome-2.4.>=1::devel/libsoup,-gnome \
			avahi-client,avahi-common,avahi-glib::net/avahi \
			ffi::devel/libffi
RUN_DEPENDS=		:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base,-gnome \
			::x11/gnome/icon-theme \
			::multimedia/gstreamer-0.10/py-gstreamer
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
			--without-mtp \
			--without-ipod \
			--without-hal \
			--without-libbrasero-media \
			--without-libnautilus-burn \
			--disable-vala \
			--disable-fm-radio \
			--disable-lirc

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# XXX TODO: plugins subpackage
CONFIGURE_ARGS+=	--disable-browser-plugin
CONFIGURE_ENV+=		MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
