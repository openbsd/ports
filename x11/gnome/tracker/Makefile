# $OpenBSD: Makefile,v 1.24 2010/04/13 14:33:27 ajacoutot Exp $

COMMENT=	powerful desktop search tool and indexer

# there is already audio/tracker, so this port has to live
# as tracker-search.
GNOME_PROJECT=	tracker
GNOME_VERSION=	0.8.1
PKGNAME=	tracker-search-${VERSION}p0

EVO_VERSION=	2.28
SUBST_VARS=	EVO_VERSION

SHARED_LIBS +=  tracker-common       1.0      # .800.0
SHARED_LIBS +=  tracker-client-0.8   0.0      # .800.0
SHARED_LIBS +=  tracker-data         1.0      # .800.0
SHARED_LIBS +=  tracker-extract-0.8  0.0      # .800.0
SHARED_LIBS +=  tracker-miner-0.8    0.0      # .800.0

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 bz2
WANTLIB += c cairo camel-1.2 camel-provider-1.2 com_err crypto
WANTLIB += dbus-1 dbus-glib-1 ebook-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += execinfo exif expat fontconfig freetype gailutil gconf-2
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmime-2.4 gmodule-2.0 gnome-2 gnome-desktop-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gnutls
WANTLIB += gobject-2.0 gpg-error gsf-1 gssapi gstbase-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg krb5 lcms m nspr4 nss3 ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png popt pthread pthread-stubs smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 startup-notification-1 stdc++
WANTLIB += tasn1 tiff util xcb xcb-atom xcb-aux xcb-event xml2
WANTLIB += z xcb-render xcb-render-util

HOMEPAGE=	http://tracker-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	vorbis,vorbisfile.>=6::audio/libvorbis \
		lib/evolution/${EVO_VERSION}/eutil.>=5::mail/evolution \
		exempi.>=1:exempi->=2.1.1:textproc/exempi \
		gsttag-0.10:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		poppler-glib,poppler::print/poppler \
		panel-applet-2::x11/gnome/panel \
		nautilus-extension:nautilus->=2.28.4p1:x11/gnome/nautilus \
		totem-plparser.>=2:totem-pl-parser->=2.28.1:x11/gnome/totem-pl-parser \
		e2fs-uuid:e2fsprogs->=1.41.4p3:sysutils/e2fsprogs
BUILD_DEPENDS=	::devel/xdg-utils \
		::lang/vala
RUN_DEPENDS=	:gamin-*:sysutils/gamin,-server \
		::devel/xdg-utils \
		::textproc/odt2txt

DESKTOP_FILES=	Yes
MODPY_RUNDEP=	No

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-id3lib \
		--enable-video-extractor=gstreamer \
		--enable-gdkpixbuf \
		--enable-gnome-keyring \
		--enable-evolution-miner \
		--enable-kmail-miner \
		--enable-tracker-status-icon \
		--enable-tracker-search-bar \
		--enable-tracker-preferences \
		--enable-exempi \
		--enable-playlist \
		--enable-nautilus-extension \
		--enable-poppler-glib \
		--enable-libexif \
		--enable-libgsf \
		--enable-libjpeg \
		--enable-libtiff \
		--enable-libxml2 \
		--enable-libvorbis \
		--disable-unit-tests \
		--disable-miner-rss \
		--disable-libstreamanalyzer \
		--disable-gcov \
		--disable-maemo \
		--disable-gstreamer-tagreadbin \
		--disable-devkit-power \
		--disable-hal \
		--disable-libinotify \
		--disable-quill \
		--disable-gstreamer-helix \
		--disable-unac \
		--without-enca \
		--disable-libiptcdata

# needs libgee
CONFIGURE_ARGS+= --disable-tracker-search-tool \
		--disable-tracker-explorer

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EXEMPI_LIBS="`pkg-config --libs exempi-2.0` -lstdc++"

FAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/tracker-search/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/miners/fs/tracker-miner-applications.c

.include <bsd.port.mk>
