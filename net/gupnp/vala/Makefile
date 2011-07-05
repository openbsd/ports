# $OpenBSD: Makefile,v 1.3 2011/07/05 17:10:53 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.8.0
REVISION=		0

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/av \
			net/gupnp/dlna \
			net/gupnp/ui

.include <bsd.port.mk>
