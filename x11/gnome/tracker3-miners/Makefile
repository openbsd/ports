# $OpenBSD: Makefile,v 1.13 2021/10/30 21:50:08 ajacoutot Exp $

COMMENT=		tracker miners and metadata extractors

GNOME_PROJECT=		tracker-miners
GNOME_VERSION=		3.2.1
PKGNAME=		tracker3-miners-${GNOME_VERSION}

# LGPLv2.1+; GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += c cue exempi exif gexiv2 gif gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gxps icui18n intl iptcdata jpeg kvm m osinfo-1.0 png
WANTLIB += poppler-glib tiff totem-plparser tracker-sparql-3.0
WANTLIB += upower-glib xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

# coreutils: sha256sum; cf. patch-meson_build
BUILD_DEPENDS=		sysutils/coreutils \
			textproc/asciidoc

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
			x11/gnome/totem-pl-parser \
			x11/gnome/tracker3

TEST_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

# tests
BUILD_DEPENDS +=	devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dnetwork_manager=disabled \
			-Dsystemd_user_services=false

# needs libgrss
CONFIGURE_ARGS +=	-Dminer_rss=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX https://gitlab.gnome.org/GNOME/tracker-miners/issues/7
CFLAGS +=		-O0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tracker3-miners
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/tracker3-miners

.include <bsd.port.mk>
