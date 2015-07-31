# $OpenBSD: Makefile,v 1.193 2015/07/31 18:39:30 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		1.4.1

# there is already audio/tracker, so this port has to live
# as meta-tracker
PKGNAME=		meta-tracker-${VERSION}

# NOTE: when TRACKER_API changes, increment accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/nautilus
# x11/gnome/online-miners
# x11/gnome/photos
# x11/gnome/rygel
TRACKER_API=		1.0
SUBST_VARS=		TRACKER_API

SHARED_LIBS +=  tracker-common       3.1      # unknown
SHARED_LIBS +=  tracker-data         3.1      # unknown
SHARED_LIBS +=  tracker-sparql-1.0   0.0      # 400.0
SHARED_LIBS +=  tracker-extract      0.0      # unknown
SHARED_LIBS +=  tracker-miner-1.0    0.0      # 400.0
SHARED_LIBS +=  tracker-control-1.0  0.0      # 400.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 atk-bridge-2.0 atspi bz2 c
WANTLIB += cairo cairo-gobject cue dbus-1 enca epoxy exempi exif expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0 gif
WANTLIB += gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gsf-1 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gxps
WANTLIB += harfbuzz icudata icui18n icuuc iptcdata jpeg kvm lcms2 lzma
WANTLIB += lzo2 m mediaart-2.0 openjpeg orc-0.4 osinfo-1.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler
WANTLIB += poppler-glib pthread pthread-stubs soup-2.4 sqlite3 stdc++
WANTLIB += tag tag_c tiff totem-plparser upower-glib util uuid xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		audio/libcue \
			audio/taglib \
			converters/enca \
			devel/libgsf \
			graphics/giflib \
			graphics/libexif \
			graphics/libgxps \
			graphics/libiptcdata \
			misc/libosinfo \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			sysutils/e2fsprogs \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/libmediaart>=1.9.0 \
			x11/gnome/totem-pl-parser

# picked up by configure to build the resdump tool. it is not installed,
# but when dpb removes libgee during a running build, causes tracker build
# to fail.
BUILD_DEPENDS +=	devel/libgee

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			x11/dbus-python

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection vala
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

MODPY_ADJ_FILES=	tests/tracker-writeback/01-writeback.py \
			utils/data-generators/cc/generate

CONFIGURE_ARGS=		--disable-miner-thunderbird \
			--disable-miner-firefox \
			--disable-network-manager

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

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
