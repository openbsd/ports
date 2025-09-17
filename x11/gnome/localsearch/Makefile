COMMENT=		collection of data extractors for Tracker/Nepomuk

GNOME_PROJECT=		localsearch
GNOME_VERSION=		3.10.0

# LGPLv2.1+ - GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += avformat c cue exempi exif gexiv2 gif gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gstreamer-1.0 gsttag-1.0
WANTLIB += gupnp-dlna-2.0 gxps icui18n intl iptcdata jpeg kvm
WANTLIB += m osinfo-1.0 png poppler-glib tiff tinysparql-3.0 totem-plparser
WANTLIB += upower-glib webpdemux xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		textproc/asciidoc

# sha256sum; cf. patch-meson_build
BUILD_DEPENDS +=	sysutils/coreutils

LIB_DEPENDS=		audio/libcue \
			devel/libgsf \
			graphics/ffmpeg \
			graphics/giflib \
			graphics/libexif \
			graphics/libgexiv2 \
			graphics/libgxps \
			graphics/libiptcdata \
			graphics/libwebp \
			misc/osinfo/libosinfo \
			net/gupnp/dlna \
			print/poppler \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/tinysparql \
			x11/gnome/totem-pl-parser

CONFIGURE_ARGS=		-Dsystemd_user_services=false \
			-Dlandlock=disabled \
			-Dfanotify=disabled

# XXX error: use of undeclared identifier 'AF_NETLINK'
CONFIGURE_ARGS +=	-Dfunctional_tests=false
# tests
#BUILD_DEPENDS +=	devel/py-gobject3
#TEST_DEPENDS=		devel/py-gobject3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX https://gitlab.gnome.org/GNOME/tracker-miners/issues/7
CFLAGS +=		-O0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/localsearch
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/localsearch

.include <bsd.port.mk>
