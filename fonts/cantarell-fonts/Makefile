# $OpenBSD: Makefile,v 1.37 2019/07/12 20:46:11 sthen Exp $

COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.111
GNOME_PROJECT=		cantarell-fonts

CATEGORIES=		fonts x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/appstream-glib

PKG_ARCH=		*

.include <bsd.port.mk>
