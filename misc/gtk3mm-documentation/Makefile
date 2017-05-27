# $OpenBSD: Makefile,v 1.22 2017/05/27 05:02:07 espie Exp $

COMMENT=		documentation for gtk3mm

GNOME_PROJECT=		gtkmm-documentation
GNOME_VERSION=		3.22.0

PKGNAME=		gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=		misc devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GFDLv1.2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

# c++14
WANT_CXX =		base clang

PKG_ARCH=		*

MODGNOME_TOOLS=		yelp

BUILD_DEPENDS=		x11/gtk3mm

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
