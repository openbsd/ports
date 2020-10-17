# $OpenBSD: Makefile,v 1.11 2020/10/17 08:33:24 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		20.10.6.1
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3, CC-SA-4.0
PERMIT_PACKAGE=	Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		shells/bash \
			www/sassc

RUN_DEPENDS=		x11/gtk+3,-guic

PKG_ARCH=		*

CONFIGURE_ARGS=		-Dgnome-shell-gresource=true

post-install:
	rm -r ${PREFIX}/share/gnome-shell/extensions/

.include <bsd.port.mk>
