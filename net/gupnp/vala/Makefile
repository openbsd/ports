# $OpenBSD: Makefile,v 1.7 2011/09/14 07:38:51 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.10.2

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/core>=0.18.0 \
			net/gupnp/av \
			net/gupnp/dlna

.include <bsd.port.mk>
