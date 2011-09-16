# $OpenBSD: Makefile,v 1.9 2011/09/16 11:13:38 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.18.0
REVISION=		1

SHARED_LIBS +=  gupnp-1.0            1.0      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 m pcre soup-2.4 xml2 z

LIBTOOL_FLAGS+= 	--tag=disable-static

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		net/gssdp>=0.12.0 \
			sysutils/e2fsprogs>=1.41.4p5

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--with-context-manager=unix

.include <bsd.port.mk>
