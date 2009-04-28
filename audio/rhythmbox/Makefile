# $OpenBSD: Makefile,v 1.30 2009/04/28 10:26:35 ajacoutot Exp $

COMMENT=		music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		0.12.1

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

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 bonobo-2 sqlite3 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0 \
		gpg-error gssapi gstbase-0.10 gstcontroller-0.10 \
		gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 \
		gthread-2.0 gtk-x11-2.0 krb5 m neon nspr4 nss3 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		plc4 plds4 png popt pthread smime3 softokn3 soup-2.4 \
		ssl ssl3 tasn1 util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:gstreamer-gnome->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-gnome
LIB_DEPENDS=		musicbrainz3::audio/libmusicbrainz \
			notify::devel/libnotify \
			gnomeui-2::x11/gnome/libgnomeui \
			gnome-media-profiles::x11/gnome/media \
			totem-plparser::x11/gnome/totem-pl-parser \
			sexy::x11/libsexy \
			camel-1.2.>=10,edataserver-1.2::databases/evolution-data-server \
			gstcdda-0.10,gsttag-0.10::multimedia/gstreamer-0.10/plugins-base,-cdda
RUN_DEPENDS=		:gstreamer-plugins-base->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-gnome \
			:gstreamer-plugins-base->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-ogg \
			:gstreamer-plugins-base->=0.10.19:multimedia/gstreamer-0.10/plugins-base,-vorbis \
			:gstreamer-plugins-good->=0.10.8:multimedia/gstreamer-0.10/plugins-good,-flac \
			:gstreamer-plugins-good->=0.10.8:multimedia/gstreamer-0.10/plugins-good,-gconf \
			:gstreamer-plugins-ugly->=0.10.7:multimedia/gstreamer-0.10/plugins-ugly,-mad \
			::x11/gnome/icon-theme
REGRESS_DEPENDS=	::devel/check

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/rhythmbox/ \
			--disable-schemas-install \
			--with-database=tree \
			--with-gnome-keyring \
			--with-x \
			--disable-scrollkeeper \
			--disable-python \
			--disable-daap \
			--without-hal \
			--without-mdns \
			--without-mtp \
			--without-ipod \
			--without-hal \
			--without-libbrasero-media \
			--without-libnautilus-burn \
			--disable-vala \
			--disable-browser-plugin \
			--disable-fm-radio \
			--disable-lirc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
