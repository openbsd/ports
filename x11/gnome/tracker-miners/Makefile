# $OpenBSD: Makefile,v 1.2 2017/11/15 20:35:35 ajacoutot Exp $

TRACKER_API=		2.0
SUBST_VARS=		TRACKER_API

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		2.0.3

SHARED_LIBS +=  tracker-extract           1.0 # 0.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender archive assuan
WANTLIB += bz2 c cairo crypto cue enca exempi exif expat ffi fontconfig
WANTLIB += freetype gcrypt gif gio-2.0 glib-2.0 gmime-3.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpgme-pthread gsf-1 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gxps iconv icudata icui18n
WANTLIB += icuuc idn intl iptcdata jpeg json-glib-1.0 kvm lcms2
WANTLIB += lz4 lzma m openjp2 orc-0.4 osinfo-1.0 pcre pixman-1
WANTLIB += png poppler poppler-glib soup-2.4 sqlite3 tag tag_c
WANTLIB += tiff totem-plparser upower-glib util uuid xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z
WANTLIB += tracker-sparql-${TRACKER_API}                                        
WANTLIB += tracker-miner-${TRACKER_API}                                         
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common                            
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

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
			x11/gnome/totem-pl-parser \
			x11/gnome/tracker

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP=		Yes
MODPY_RUNDEP=		No

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

# needs libstemmer
CONFIGURE_ARGS +=	--disable-libstemmer

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/tracker-miners/

post-install:
	rm ${PREFIX}/lib/tracker-miners-${TRACKER_API}/extract-modules/*.{a,la}
	rm ${PREFIX}/lib/tracker-miners-${TRACKER_API}/writeback-modules/*.{a,la}

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} || true
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} functional-test

.include <bsd.port.mk>
