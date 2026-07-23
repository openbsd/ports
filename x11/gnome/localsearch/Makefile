COMMENT=		collection of data extractors for Tracker/Nepomuk

GNOME_PROJECT=		localsearch
GNOME_VERSION=		3.11.1
REVISION=		0

# LGPLv2.1+ - GPLv2+
PERMIT_PACKAGE=		Yes

# error: wrong number of arguments specified for 'deprecated' attribute
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += avformat c cue exempi gexiv2-0.16 gif gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 gstreamer-1.0 gsttag-1.0 gupnp-dlna-2.0
WANTLIB += gxps icui18n intl jpeg kvm m osinfo-1.0 png poppler-glib
WANTLIB += tiff tinysparql-3.0 totem-plparser upower-glib webpdemux
WANTLIB += xml2 zip

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		textproc/asciidoc

# sha256sum; cf. patch-meson_build
BUILD_DEPENDS +=	sysutils/coreutils

LIB_DEPENDS=		archivers/libzip \
			audio/libcue \
			devel/libgsf \
			graphics/ffmpeg \
			graphics/giflib \
			graphics/gexiv2 \
			graphics/libgxps \
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
