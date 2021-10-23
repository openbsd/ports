# $OpenBSD: Makefile,v 1.40 2021/10/03 19:54:35 ajacoutot Exp $

COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.303
GNOME_PROJECT=		cantarell-fonts

# no official release yet
MASTER_SITES=		https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/jobs/1515398/artifacts/raw/build/meson-dist/

CATEGORIES=		fonts x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/appstream-glib

PKG_ARCH=		*

# use pre-built font binaries; otherwise we would need psautohint
CONFIGURE_ARGS=		-Duseprebuilt=true

.include <bsd.port.mk>
