# $OpenBSD: Makefile,v 1.44 2010/07/23 07:57:12 ajacoutot Exp $

COMMENT=	powerful desktop search tool and indexer

GNOME_PROJECT=	tracker
GNOME_VERSION=	0.8.15
REVISION=	1

# there is already audio/tracker, so this port has to live
# as tracker-search.
PKGNAME=	tracker-search-${VERSION}

EVO_VERSION=	2.30
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
WANTLIB += eggdbus-1 enchant execinfo exif expat fontconfig freetype
WANTLIB += gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmime-2.4 gmodule-2.0 gnome-2
WANTLIB += gnome-desktop-2 gnome-keyring gnomecanvas-2 gnomevfs-2
WANTLIB += gnutls gobject-2.0 gpg-error gsf-1 gssapi gstbase-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 gtkhtml-3.14
WANTLIB += gtkhtml-editor jpeg krb5 lcms m nspr4 nss3 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png popt pthread pthread-stubs smime3 soup-2.4 sqlite3
WANTLIB += ssl ssl3 startup-notification-1 stdc++ tasn1 tiff unique-1.0
WANTLIB += util xcb xcb-atom xcb-aux xcb-event xcb-render xcb-render-util
WANTLIB += xml2 z openjpeg
WANTLIB += vorbis vorbisfile lib/evolution/${EVO_VERSION}/eutil exempi
WANTLIB += gsttag-0.10 poppler-glib poppler panel-applet-2
WANTLIB += nautilus-extension totem-plparser e2fs-uuid gee

HOMEPAGE=	http://tracker-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	::audio/libvorbis \
		::mail/evolution \
		:exempi->=2.1.1:textproc/exempi \
		:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		::print/poppler \
		::x11/gnome/panel \
		:nautilus->=2.28.4p1:x11/gnome/nautilus \
		:totem-pl-parser->=2.28.1:x11/gnome/totem-pl-parser \
		:e2fsprogs->=1.41.4p3:sysutils/e2fsprogs \
		::devel/libgee
BUILD_DEPENDS=	::devel/xdg-utils \
		::lang/vala
RUN_DEPENDS=	:gamin-*:sysutils/gamin,-server \
		::devel/xdg-utils \
		::textproc/odt2txt

DESKTOP_FILES=	Yes
MODPY_RUNDEP=	No

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-video-extractor=gstreamer \
		--enable-gdkpixbuf \
		--enable-gnome-keyring \
		--enable-miner-evolution \
		--enable-miner-kmail \
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
		--enable-tracker-search-tool \
		--enable-tracker-explorer \
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
		--disable-libiptcdata \
		--disable-libflac

# there is a check in configure, but no id3 plugin whatsoever in source
CONFIGURE_ARGS+= --disable-id3lib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EXEMPI_LIBS="`pkg-config --libs exempi-2.0` -lstdc++"

FAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/tracker-search/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/miners/fs/tracker-miner-applications.c

.include <bsd.port.mk>
