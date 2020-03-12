# $OpenBSD: Makefile,v 1.35 2020/03/12 20:08:56 jasper Exp $

COMMENT=		crawls through your online content

GNOME_PROJECT=		gnome-online-miners
GNOME_VERSION=		3.34.0
REVISION=		1

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += brotlicommon brotlidec c ffi gck-1 gcr-base-3 gcrypt
WANTLIB += gdata gfbgraph-0.2 gio-2.0 glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gpg-error grilo-0.3 gthread-2.0 iconv icudata
WANTLIB += icui18n icuuc idn2 intl json-glib-1.0 kvm lzma m p11-kit
WANTLIB += pcre psl rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3 tracker-miner-2.0
WANTLIB += tracker-sparql-2.0 unistring uuid xml2 z zapojit-0.0
WANTLIB += lib/tracker-2.0/tracker-data

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libgdata \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libzapojit \
			x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=		net/dleyna/server

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gnome-online-miners/*.{a,la}

.include <bsd.port.mk>
