COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		3.7.2
PKGNAME=		tracker3-miners-${GNOME_VERSION}

# LGPLv2.1+ - GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += blkid c cue exempi exif gexiv2 gif gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gxps icui18n intl iptcdata jpeg kvm m osinfo-1.0
WANTLIB += png poppler-glib tiff totem-plparser tracker-sparql-3.0
WANTLIB += upower-glib xml2

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
			sysutils/e2fsprogs \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/totem-pl-parser \
			x11/gnome/tracker3

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tracker3-miners
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/tracker3-miners

.include <bsd.port.mk>
