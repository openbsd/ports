# $OpenBSD: Makefile,v 1.14 2019/03/07 10:48:53 ajacoutot Exp $

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		2.2.1

SHARED_LIBS +=  tracker-extract           1.1 # 0.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC archive c cairo cue exempi exif gexiv2 gif gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gxps icudata icui18n icuuc intl iptcdata
WANTLIB += jpeg m osinfo-1.0 png16 poppler-glib pthread tag tag_c
WANTLIB += tiff totem-plparser tracker-miner-2.0 tracker-sparql-2.0
WANTLIB += upower-glib vorbisfile xml2 z

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
