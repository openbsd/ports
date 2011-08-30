# $OpenBSD: Makefile,v 1.5 2011/08/30 07:58:23 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.10.0

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/core>=0.18.0 \
			net/gupnp/av \
			net/gupnp/dlna \
			net/gupnp/ui

.include <bsd.port.mk>
