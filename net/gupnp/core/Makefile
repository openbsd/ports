# $OpenBSD: Makefile,v 1.20 2013/04/16 13:17:01 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.20.2

SHARED_LIBS +=  gupnp-1.0            2.0      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 m pcre soup-2.4 xml2 z ffi pthread sqlite3

LIBTOOL_FLAGS+= 	--tag=disable-static

MODGNOME_TOOLS= 	gi vala
LIB_DEPENDS=		net/gssdp>=0.12.2 \
			sysutils/e2fsprogs>=1.41.4p5

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS+=	--disable-static \
			--with-context-manager=unix

.include <bsd.port.mk>
