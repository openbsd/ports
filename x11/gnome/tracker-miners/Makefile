# $OpenBSD: Makefile,v 1.17 2019/07/07 11:20:55 ajacoutot Exp $

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		2.2.2
REVISION=		0

SHARED_LIBS +=  tracker-extract           1.1 # 0.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += FLAC archive c cairo cue exempi exif gexiv2 gif gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += gxps icudata icui18n icuuc intl iptcdata jpeg m osinfo-1.0
WANTLIB += png poppler-glib pthread tag tag_c tiff totem-plparser
WANTLIB += tracker-miner-2.0 tracker-sparql-2.0 upower-glib vorbisfile
WANTLIB += xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

LIB_DEPENDS=		audio/flac \
			audio/libcue \
			audio/taglib \
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
