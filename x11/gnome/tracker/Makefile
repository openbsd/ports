# $OpenBSD: Makefile,v 1.238 2019/02/21 17:08:13 ajacoutot Exp $

COMMENT=		metadata database and search tool

GNOME_PROJECT=		tracker
GNOME_VERSION=		2.2.0

# there is already audio/tracker, so this port has to live
# as meta-tracker
PKGNAME=		meta-tracker-${VERSION}

SHARED_LIBS +=  tracker-common       4.0      # unknown
SHARED_LIBS +=  tracker-data         4.0      # unknown
SHARED_LIBS +=  tracker-sparql-2.0   0.1      # 0.200.0
SHARED_LIBS +=  tracker-miner-2.0    0.0      # 0.200.0
SHARED_LIBS +=  tracker-control-2.0  0.0      # 0.200.0

# GPLv2+ - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 icudata icui18n icuuc
WANTLIB += intl json-glib-1.0 kvm m soup-2.4 sqlite3 uuid xml2

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup \
			sysutils/e2fsprogs \
			textproc/icu4c

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_ARGS=		-Dnetwork_manager=disabled

# needs libstemmer
CONFIGURE_ARGS +=	-Dstemmer=disabled

post-install:                                                                   
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/meta-tracker
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/meta-tracker

.include <bsd.port.mk>
