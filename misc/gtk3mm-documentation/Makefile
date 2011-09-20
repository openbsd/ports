# $OpenBSD: Makefile,v 1.5 2011/09/20 20:51:52 jasper Exp $

COMMENT=	documentation for gtk3mm

GNOME_PROJECT=	gtkmm-documentation
GNOME_VERSION=	3.0.3

PKGNAME=	gtk3mm-documentation-${GNOME_VERSION}

CATEGORIES=	misc devel

HOMEPAGE=	http://www.gtkmm.org/

# GFDLv1.2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	x11/gnome

PKG_ARCH=	*

USE_LIBTOOL=	No
MODGNOME_TOOLS= 	yelp

BUILD_DEPENDS=	x11/gtk3mm

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
