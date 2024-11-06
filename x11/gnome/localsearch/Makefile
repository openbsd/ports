COMMENT=		collection of data extractors for Tracker/Nepomuk

GNOME_PROJECT=		localsearch
GNOME_VERSION=		3.8.0
REVISION=		0

# LGPLv2.1+ - GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += c cue exempi exif gexiv2 gif gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gxps icui18n intl iptcdata jpeg kvm m osinfo-1.0 png
WANTLIB += poppler-glib tiff tinysparql-3.0 totem-plparser upower-glib
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/asciidoc

# sha256sum; cf. patch-meson_build
BUILD_DEPENDS +=	sysutils/coreutils

LIB_DEPENDS=		audio/libcue \
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
			x11/gnome/tinysparql \
			x11/gnome/totem-pl-parser

CONFIGURE_ARGS=		-Dnetwork_manager=disabled \
			-Dsystemd_user_services=false \
			-Dlandlock=disabled \
			-Dfanotify=disabled

# needs libgrss
# XXX error: use of undeclared identifier 'AF_NETLINK'
CONFIGURE_ARGS +=	-Dfunctional_tests=false
# tests
#BUILD_DEPENDS +=	devel/py-gobject3${MODPY_FLAVOR}
#TEST_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_ARGS +=	-Dminer_rss=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX https://gitlab.gnome.org/GNOME/tracker-miners/issues/7
CFLAGS +=		-O0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/localsearch
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/localsearch

.include <bsd.port.mk>
