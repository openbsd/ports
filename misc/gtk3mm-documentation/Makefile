# $OpenBSD: Makefile,v 1.13 2013/06/10 09:49:02 ajacoutot Exp $

COMMENT=	documentation for gtk3mm

GNOME_PROJECT=	gtkmm-documentation
GNOME_VERSION=	3.8.0

PKGNAME=	gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=	misc devel

HOMEPAGE=	http://www.gtkmm.org/

# GFDLv1.2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

PKG_ARCH=	*

MODGNOME_TOOLS=	yelp

BUILD_DEPENDS=	x11/gtk3mm

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
