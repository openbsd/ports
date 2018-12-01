# $OpenBSD: Makefile,v 1.1.1.1 2018/12/01 13:32:10 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		18.10.7
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru

CATEGORIES=		x11

# GPLv3, CC-SA-4.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		www/sassc

RUN_DEPENDS=		x11/gtk+3,-guic

PKG_ARCH=		*

.include <bsd.port.mk>
