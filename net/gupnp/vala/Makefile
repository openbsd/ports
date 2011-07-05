# $OpenBSD: Makefile,v 1.1.1.1 2011/07/05 17:02:42 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.8.0

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/av

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
