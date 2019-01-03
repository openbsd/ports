# $OpenBSD: Makefile,v 1.10 2019/01/03 14:23:04 ajacoutot Exp $

TRACKER_API=		2.0
SUBST_VARS=		TRACKER_API

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		2.1.5

SHARED_LIBS +=  tracker-extract           1.0 # 0.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender archive assuan
WANTLIB += bz2 c cairo crypto cue enca exempi exif exiv2 expat
WANTLIB += ffi fontconfig freetype gcrypt gexiv2 gif gio-2.0 glib-2.0
WANTLIB += gmime-3.0 gmodule-2.0 gobject-2.0 gpg-error gpgme gsf-1
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gxps iconv icudata
WANTLIB += icui18n icuuc idn2 intl iptcdata jpeg json-glib-1.0
WANTLIB += kvm lcms2 lz4 lzma m openjp2 orc-0.4 osinfo-1.0 pcre
WANTLIB += pixman-1 png16 poppler poppler-glib soup-2.4 sqlite3
WANTLIB += tag tag_c tiff totem-plparser unistring upower-glib
WANTLIB += util uuid xcb xcb-render xcb-shm xml2 xslt z zstd
WANTLIB += tracker-sparql-${TRACKER_API}                                        
WANTLIB += tracker-miner-${TRACKER_API}                                         
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common                            
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

COMPILER =		base-clang ports-gcc base-gcc

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
			graphics/libgexiv2 \
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

# XXX https://gitlab.gnome.org/GNOME/tracker-miners/issues/7
CFLAGS +=		-O0

post-install:
	rm ${PREFIX}/lib/tracker-miners-${TRACKER_API}/extract-modules/*.{a,la}
	rm ${PREFIX}/lib/tracker-miners-${TRACKER_API}/writeback-modules/*.{a,la}

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} || true
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} functional-test

.include <bsd.port.mk>
