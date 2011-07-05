# $OpenBSD: Makefile,v 1.4 2011/07/05 17:14:30 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.8.0
REVISION=		1

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/av \
			net/gupnp/dlna \
			net/gupnp/ui

.include <bsd.port.mk>
