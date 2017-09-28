# $OpenBSD: Makefile,v 1.222 2017/09/28 23:39:53 naddy Exp $

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		1.12.3
REVISION=		1

# there is already audio/tracker, so this port has to live
# as meta-tracker
PKGNAME=		meta-tracker-${VERSION}

# NOTE: when TRACKER_API changes, increment accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/nautilus
# x11/gnome/online-miners
# x11/gnome/photos
TRACKER_API=		1.0
SUBST_VARS=		TRACKER_API

SHARED_LIBS +=  tracker-common       3.3      # unknown
SHARED_LIBS +=  tracker-data         3.3      # unknown
SHARED_LIBS +=  tracker-sparql-1.0   1.2      # 1201.0
SHARED_LIBS +=  tracker-extract      0.1      # unknown
SHARED_LIBS +=  tracker-miner-1.0    1.1      # 1201.0
SHARED_LIBS +=  tracker-control-1.0  1.1      # 1201.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto cue dbus-1 enca
WANTLIB += epoxy exempi exif expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gpgme-pthread graphite2
WANTLIB += gsf-1 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gxps harfbuzz
WANTLIB += iconv icudata icui18n icuuc intl iptcdata jpeg json-glib-1.0
WANTLIB += kvm lcms2 lz4 lzma m mediaart-2.0 openjp2 orc-0.4 osinfo-1.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png poppler poppler-glib pthread pthread-stubs soup-2.4
WANTLIB += sqlite3>=37.1 ${COMPILER_LIBCXX} tag tag_c tiff totem-plparser upower-glib
WANTLIB += util uuid xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

LIB_DEPENDS=		audio/libcue \
			audio/taglib \
			converters/enca \
			devel/json-glib \
			devel/libgsf \
			graphics/giflib \
			graphics/libexif \
			graphics/libgxps \
			graphics/libiptcdata \
			misc/osinfo/libosinfo \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			sysutils/e2fsprogs \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/libmediaart \
			x11/gnome/totem-pl-parser

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			x11/dbus-python

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection vala
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

MODPY_ADJ_FILES=	tests/tracker-writeback/01-writeback.py \
			utils/data-generators/cc/generate

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

CONFIGURE_ARGS=		--disable-miner-thunderbird \
			--disable-miner-firefox \
			--disable-network-manager

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

# needs libstemmer
CONFIGURE_ARGS +=	--disable-libstemmer

# cyclic dependency with x11/gnome/nautilus
CONFIGURE_ARGS +=	--disable-nautilus-extension

# XXX disable evolution miner which does not build with evo >= 3.6.0
CONFIGURE_ARGS +=	--disable-miner-evolution

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/meta-tracker/

pre-configure:
	sed -i 's,/usr/bin,${LOCALBASE}/bin,' \
		${WRKSRC}/src/tracker-needle/tracker-utils.vala

post-install:
	rm ${PREFIX}/lib/tracker-${TRACKER_API}/extract-modules/*.{a,la}
	rm ${PREFIX}/lib/tracker-${TRACKER_API}/writeback-modules/*.{a,la}

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
