# $OpenBSD: Makefile,v 1.7 2020/05/17 17:54:05 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		20.10.1
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

# Remove and use -Dgnome-shell-gresource=true once we have GNOME 3.36
# see patch-gnome-shell_src_meson_build
BUILD_DEPENDS +=	sysutils/coreutils

post-install:
	rm -r ${PREFIX}/share/gnome-shell/extensions/

.include <bsd.port.mk>
