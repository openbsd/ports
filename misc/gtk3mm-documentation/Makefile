# $OpenBSD: Makefile,v 1.29 2020/12/16 17:20:04 ajacoutot Exp $

COMMENT=		documentation for gtk3mm

GNOME_PROJECT=		gtkmm-documentation
GNOME_VERSION=		3.24.1

PKGNAME=		gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=		misc devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GFDLv1.2
PERMIT_PACKAGE=	Yes

MODULES=		devel/meson \
			x11/gnome

# c++14
COMPILER =		base-clang ports-clang

PKG_ARCH=		*

MODGNOME_TOOLS=		docbook yelp

BUILD_DEPENDS=		x11/gtk3mm

.include <bsd.port.mk>
