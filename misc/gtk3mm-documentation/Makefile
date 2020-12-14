# $OpenBSD: Makefile,v 1.28 2020/12/14 12:38:26 ajacoutot Exp $

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

MODGNOME_TOOLS=		yelp

BUILD_DEPENDS=		x11/gtk3mm

.include <bsd.port.mk>
