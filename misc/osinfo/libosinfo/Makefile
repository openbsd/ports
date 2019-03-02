# $OpenBSD: Makefile,v 1.6 2019/03/02 17:25:40 ajacoutot Exp $

COMMENT=		library for managing information about operating systems

DISTNAME=		libosinfo-${V}

SHARED_LIBS +=  osinfo-1.0           1.2      # 1004.0

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl lzma m pcre pthread xml2 xslt z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/gettext-tools

# needed for test
BUILD_DEPENDS +=	devel/check \
			devel/libsoup

LIB_DEPENDS=		devel/glib2 \
			textproc/libxslt

RUN_DEPENDS=		misc/hwdata \
			misc/osinfo/osinfo-db

TEST_DEPENDS=		misc/osinfo/osinfo-db

CONFIGURE_ARGS=		--with-usb-ids-path=${LOCALBASE}/share/hwdata/usb.ids \
			--with-pci-ids-path=${LOCALBASE}/share/hwdata/pnp.ids

MAKE_FLAGS=		NO_UNDEFINED_FLAGS=

.include <bsd.port.mk>
