# $OpenBSD: Makefile,v 1.4 2019/10/26 19:52:07 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		19.10.4
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru

CATEGORIES=		x11

# GPLv3, CC-SA-4.0
PERMIT_PACKAGE=	Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		www/sassc

RUN_DEPENDS=		x11/gtk+3,-guic

PKG_ARCH=		*

.include <bsd.port.mk>
