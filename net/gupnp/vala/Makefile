# $OpenBSD: Makefile,v 1.9 2012/02/26 15:06:10 ajacoutot Exp $

COMMENT=		Vala bindings to GUPnP framework

GNOME_PROJECT=		gupnp-vala
GNOME_VERSION=		0.10.3
REVISION=		0

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/vala \
			net/gupnp/core>=0.18.0 \
			net/gupnp/av \
			net/gupnp/dlna

.include <bsd.port.mk>
