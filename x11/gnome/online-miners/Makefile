COMMENT=		crawls through your online content

GNOME_PROJECT=		gnome-online-miners
GNOME_VERSION=		3.34.0
REVISION=		3

# tracker3 support
# https://gitlab.gnome.org/GNOME/gnome-online-miners/-/merge_requests/3
MASTER_SITES0=		https://src.fedoraproject.org/rpms/gnome-online-miners/raw/rawhide/f/
PATCHFILES=		tracker3.patch:0
PATCH_DIST_STRIP=	-p1

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} brotlicommon brotlidec c ffi gck-1
WANTLIB += gcr-base-3 gcrypt gdata gfbgraph-0.2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error grilo-0.3
WANTLIB += gthread-2.0 iconv icudata icui18n icuuc idn2 intl json-glib-1.0
WANTLIB += lzma m p11-kit pcre psl rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stemmer tracker-sparql-3.0 unistring xml2 z
WANTLIB += zapojit-0.0

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libgdata \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libzapojit \
			x11/gnome/tracker3

# com.intel.dleyna-server
RUN_DEPENDS +=		net/dleyna/server

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf

post-install:
	rm ${PREFIX}/lib/gnome-online-miners/*.{a,la}

.include <bsd.port.mk>
