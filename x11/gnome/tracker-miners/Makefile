# $OpenBSD: Makefile,v 1.24 2020/08/26 07:02:33 ajacoutot Exp $

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		2.3.4

SHARED_LIBS +=  tracker-extract           1.1 # 0.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += FLAC c cue exempi exif gexiv2 gif gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gxps icui18n intl iptcdata jpeg kvm m osinfo-1.0
WANTLIB += png poppler-glib tiff totem-plparser tracker-miner-2.0
WANTLIB += tracker-sparql-2.0 upower-glib vorbisfile xml2

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

TEST_DEPENDS=		devel/py-gobject3,${MODPY_FLAVOR}

LIB_DEPENDS=		audio/flac \
			audio/libcue \
			devel/libgsf \
			graphics/giflib \
			graphics/libexif \
			graphics/libgexiv2 \
			graphics/libgxps \
			graphics/libiptcdata \
			misc/osinfo/libosinfo \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/totem-pl-parser \
			x11/gnome/tracker

# needs libgrss
CONFIGURE_ARGS +=	-Dminer_rss=false

# XXX https://gitlab.gnome.org/GNOME/tracker-miners/issues/7
CFLAGS +=		-O0

post-install:                                                                   
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tracker-miners
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/tracker-miners

.include <bsd.port.mk>
