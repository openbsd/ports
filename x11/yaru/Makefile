# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:30 sthen Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		19.04.1
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
