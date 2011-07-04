# $OpenBSD: Makefile,v 1.1.1.1 2011/07/04 15:28:05 jasper Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.16.1

SHARED_LIBS +=  gupnp-1.0            0.0      # 3.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 m pcre soup-2.4 xml2 z

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		net/gssdp \
			sysutils/e2fsprogs

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--with-context-manager=unix
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
