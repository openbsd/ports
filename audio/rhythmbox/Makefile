# $OpenBSD: Makefile,v 1.44 2009/09/28 18:32:02 ajacoutot Exp $

COMMENT=		music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		0.12.5
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=  rhythmbox-core       0.0      # .0.0

CATEGORIES=		audio

HOMEPAGE=		http://www.rhythmbox.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo com_err crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 m neon nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png popt pthread proxy smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 tasn1 util xml2
WANTLIB += pthread-stubs xcb z

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/gconf2

BUILD_DEPENDS=		:gstreamer-gnome->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-gnome \
			::multimedia/gstreamer-0.10/py-gstreamer
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			musicbrainz3::audio/libmusicbrainz \
			notify::devel/libnotify \
			gnomeui-2::x11/gnome/libgnomeui \
			gnome-media-profiles::x11/gnome/media \
			totem-plparser::x11/gnome/totem-pl-parser \
			camel-1.2.>=10,edataserver-1.2::databases/evolution-data-server \
			gstcdda-0.10,gsttag-0.10::multimedia/gstreamer-0.10/plugins-base,-cdda \
			soup-gnome-2.4.>=1::devel/libsoup,-gnome
RUN_DEPENDS=		:gstreamer-plugins-base->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-gnome \
			:gstreamer-plugins-good->=0.10.8:multimedia/gstreamer-0.10/plugins-good,-gconf \
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
