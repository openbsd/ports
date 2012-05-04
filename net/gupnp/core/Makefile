# $OpenBSD: Makefile,v 1.14 2012/05/04 07:09:13 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.18.3

SHARED_LIBS +=  gupnp-1.0            1.0      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 m pcre soup-2.4 xml2 z ffi

LIBTOOL_FLAGS+= 	--tag=disable-static

MODGNOME_TOOLS= 	goi
LIB_DEPENDS=		net/gssdp>=0.12.0 \
			sysutils/e2fsprogs>=1.41.4p5

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS+=	--with-context-manager=unix

.include <bsd.port.mk>
