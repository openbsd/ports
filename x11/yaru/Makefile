# $OpenBSD: Makefile,v 1.13 2021/09/02 09:24:42 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		21.10.1
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
