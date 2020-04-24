# $OpenBSD: Makefile,v 1.5 2020/04/24 06:46:31 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		20.04.6
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3, CC-SA-4.0
PERMIT_PACKAGE=	Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		www/sassc

RUN_DEPENDS=		x11/gtk+3,-guic

PKG_ARCH=		*

# Remove and use -Dgnome-shell-gresource=true once we have GNOME 3.36
# see patch-gnome-shell_src_meson_build
BUILD_DEPENDS +=	sysutils/coreutils

.include <bsd.port.mk>
