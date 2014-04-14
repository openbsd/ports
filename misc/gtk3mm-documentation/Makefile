# $OpenBSD: Makefile,v 1.17 2014/04/14 11:22:44 ajacoutot Exp $

COMMENT=		documentation for gtk3mm

GNOME_PROJECT=		gtkmm-documentation
GNOME_VERSION=		3.12.0

PKGNAME=		gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=		misc devel

HOMEPAGE=		http://www.gtkmm.org/

# GFDLv1.2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

PKG_ARCH=		*

MODGNOME_TOOLS=		yelp

BUILD_DEPENDS=		x11/gtk3mm

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
