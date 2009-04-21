# $OpenBSD: Makefile,v 1.1.1.1 2009/04/21 21:34:46 jasper Exp $

COMMENT=	powerful desktop search tool and indexer

GNOME_PROJECT=	tracker
GNOME_VERSION=	0.6.93

SHARED_LIBS +=	stemmer              0.0      # .693.0
SHARED_LIBS +=	tracker-common       0.0      # .693.0
SHARED_LIBS +=	tracker-db           0.0      # .693.0
SHARED_LIBS +=	tracker-data         0.0      # .693.0
SHARED_LIBS +=	trackerclient        0.0      # .693.0
SHARED_LIBS +=	tracker-module       0.0      # .0.0
SHARED_LIBS +=	tracker-gtk          0.0      # .693.0

HOMEPAGE=	http://tracker-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 bz2 c cairo camel-1.2 com_err crypto curl
WANTLIB += dbus-1 dbus-glib-1 edataserver-1.2 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gnutls
WANTLIB += gobject-2.0 gpg-error gssapi gsttag-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 idn jpeg krb5 m nspr4 nss3 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png popt pthread smime3 softokn3 soup-2.4 ssl ssl3
WANTLIB += startup-notification-1 tasn1 tiff totem-plparser util
WANTLIB += vorbis xml2 xslt z

LIB_DEPENDS=		qdbm::databases/qdbm \
			sqlite3::databases/sqlite3 \
			gsf-1::devel/libgsf \
			notify::devel/libnotify \
			exif::graphics/libexif \
			gmime-2.0::mail/gmime \
			gstbase-0.10,gstreamer-0.10::multimedia/gstreamer-0.10/core \
			poppler-glib,poppler::print/poppler \
			raptor::textproc/raptor \
			gnome-desktop-2::x11/gnome/desktop
BUILD_DEPENDS=		::devel/xdg-utils \
			::x11/gnome/deskbar-applet
RUN_DEPENDS=		::devel/glib2,-fam \
			::devel/xdg-utils \
			::textproc/odt2txt \
			::www/w3m \
			::x11/gnome/deskbar-applet

# Allow tracker to index the media files these gstreamer packages
# can grok. To not force a huge pile of dependencies on the user
# only install a base set.
RUN_DEPENDS+=	:gstreamer-vorbis-*:multimedia/gstreamer-0.10/plugins-base,-vorbis \
		:gstreamer-ogg-*:multimedia/gstreamer-0.10/plugins-base,-ogg \
		:gstreamer-theora-*:multimedia/gstreamer-0.10/plugins-base,-theora \
		:gstreamer-jpeg-*:multimedia/gstreamer-0.10/plugins-good,-jpeg \
		:gstreamer-png-*:multimedia/gstreamer-0.10/plugins-good,-png \
		:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf

DESKTOP_FILES=		Yes
MODPY_RUNDEP=		No

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-external-qdbm \
			--enable-video-extractor="gstreamer" \
			--disable-unac \
			--disable-xmp \
			--disable-hal \
			--enable-libexif \
			--enable-libgsf \
			--enable-libjpeg \
			--enable-libtiff \
			--enable-libvorbis \
			--enable-gdkpixbuf \
			--enable-deskbar-applet \
			--with-deskbar-applet-handler-dir="${LOCALBASE}/lib/python${MODPY_VERSION}/site-packages/deskbar/handlers/"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
