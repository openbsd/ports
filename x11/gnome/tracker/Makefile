# $OpenBSD: Makefile,v 1.233 2018/07/06 06:04:46 espie Exp $

COMMENT=		metadata database and search tool

GNOME_PROJECT=		tracker
GNOME_VERSION=		2.0.4

# there is already audio/tracker, so this port has to live
# as meta-tracker
PKGNAME=		meta-tracker-${VERSION}
REVISION=		0

# NOTE: when TRACKER_API changes, increment accordingly and bump:
# x11/gnome/grilo-plugins
# x11/gnome/nautilus
# x11/gnome/online-miners
# x11/gnome/photos
# x11/gnome/tracker-miners
TRACKER_API=		2.0
SUBST_VARS=		TRACKER_API

SHARED_LIBS +=  tracker-control-2.0       0.0 # 2.0
SHARED_LIBS +=  tracker-miner-2.0         0.0 # 2.0
SHARED_LIBS +=  tracker-sparql-2.0        0.0 # 2.0
SHARED_LIBS +=  tracker-common            4.0 # 4.0
SHARED_LIBS +=  tracker-data              4.0 # 4.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv icudata icui18n icuuc intl json-glib-1.0
WANTLIB += kvm lzma m pcre soup-2.4 sqlite3 uuid xml2 z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup \
			sysutils/e2fsprogs \
			textproc/icu4c

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-network-manager

# needs libstemmer
CONFIGURE_ARGS +=	--disable-libstemmer

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/meta-tracker/

TEST_DEPENDS=		lang/python/${MODPY_DEFAULT_VERSION_2}
do-test:
	sed -i "1 s|^.*$$|#!${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2}|" \
		${WRKSRC}/utils/data-generators/cc/generate
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} || true
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM} functional-test

.include <bsd.port.mk>
