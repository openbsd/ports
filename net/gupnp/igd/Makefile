# $OpenBSD: Makefile,v 1.24 2019/11/13 19:21:49 jasper Exp $

COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		0.2.5
REVISION=		2

SHARED_LIBS +=  gupnp-igd-1.0        0.0      # 4.0

MODULES=		lang/python \
			x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += gthread-2.0 gupnp-1.2 iconv idn2 intl lzma m pcre psl
WANTLIB += pthread soup-2.4 sqlite3 unistring xml2 z

MODGNOME_TOOLS +=	gobject-introspection

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/gupnp/core>=1.1.2
BUILD_DEPENDS=		devel/py-gobject
RUN_DEPENDS=		devel/py-gobject

# XXX remove when updating
post-patch:
	cd ${WRKSRC} && \
		sed -i -e 's,gssdp-1.0,gssdp-1.2,g' -e 's,gupnp-1.0,gupnp-1.2,g' \
		configure gupnp-igd-1.0.pc.in libgupnp-igd/Makefile.in \
		libgupnp-igd/GUPnPIgd-1.0.gir

.include <bsd.port.mk>
