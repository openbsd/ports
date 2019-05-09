# $OpenBSD: Makefile,v 1.2 2019/05/09 16:13:56 ajacoutot Exp $

COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		19.04.1
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
