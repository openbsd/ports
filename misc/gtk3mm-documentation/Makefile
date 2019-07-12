# $OpenBSD: Makefile,v 1.27 2019/07/12 20:47:50 sthen Exp $

COMMENT=		documentation for gtk3mm

GNOME_PROJECT=		gtkmm-documentation
GNOME_VERSION=		3.24.0

PKGNAME=		gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=		misc devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GFDLv1.2
PERMIT_PACKAGE=	Yes

MODULES=		x11/gnome

# c++14
COMPILER =		base-clang ports-clang

PKG_ARCH=		*

MODGNOME_TOOLS=		yelp

BUILD_DEPENDS=		x11/gtk3mm

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
