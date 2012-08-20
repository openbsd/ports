# $OpenBSD: Makefile,v 1.10 2012/08/20 08:54:07 jasper Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.10.4

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/core>=0.18.4	 \
			net/gupnp/av \
			net/gupnp/dlna

.include <bsd.port.mk>
