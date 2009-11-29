# $OpenBSD: Makefile,v 1.19 2009/11/29 09:28:28 ajacoutot Exp $

COMMENT=	powerful desktop search tool and indexer

# there is already audio/tracker, so this port has to live
# as tracker-search.
GNOME_PROJECT=	tracker
GNOME_VERSION=	0.6.95
PKGNAME=	tracker-search-${VERSION}p3

SHARED_LIBS +=	stemmer              0.1      # .695.0
SHARED_LIBS +=	tracker-common       0.1      # .695.0
SHARED_LIBS +=	tracker-db           0.1      # .695.0
SHARED_LIBS +=	tracker-data         0.1      # .695.0
SHARED_LIBS +=	trackerclient        0.1      # .695.0
SHARED_LIBS +=	tracker-module       0.0      # .0.0
SHARED_LIBS +=	tracker-gtk          0.1      # .695.0

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 bz2
WANTLIB += c cairo crypto curl dbus-1 dbus-glib-1 execinfo expat
WANTLIB += fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmime-2.4 gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 idn jpeg lcms m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl startup-notification-1 tiff util xcb xcb-atom xcb-aux
WANTLIB += xcb-event xml2 xslt z

HOMEPAGE=	http://tracker-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	vorbis::audio/libvorbis \
		qdbm::databases/qdbm \
		sqlite3::databases/sqlite3 \
		gsf-1::devel/libgsf \
		notify::devel/libnotify \
		exif::graphics/libexif \
		gmime-2.0:gmime->=2.2,<2.4:mail/gmime \
		gsttag-0.10:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		poppler-glib,poppler::print/poppler \
		raptor::textproc/raptor \
		gnome-desktop-2::x11/gnome/desktop \
		totem-plparser.>=2:totem-pl-parser->=2.28.1:x11/gnome/totem-pl-parser
BUILD_DEPENDS=	::devel/xdg-utils
RUN_DEPENDS=	::devel/glib2,-fam \
		::devel/xdg-utils \
		::textproc/odt2txt

DESKTOP_FILES=	Yes
MODPY_RUNDEP=	No

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
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
		--with-deskbar_applet_dir=${PREFIX}/libexec/deskbar-applet/modules-2.20-compatible \
		--with-deskbar-applet-handler-dir="${LOCALBASE}/lib/python${MODPY_VERSION}/site-packages/deskbar/handlers/"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# see patch-configure
CONFIGURE_ENV+=	have_deskbar_applet="module"

FAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/tracker-search/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/modules/applications.module

.include <bsd.port.mk>
