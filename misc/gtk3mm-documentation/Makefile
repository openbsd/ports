# $OpenBSD: Makefile,v 1.3 2011/05/12 09:50:26 ajacoutot Exp $

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

MODULES=	x11/gnome

PKG_ARCH=	*

USE_LIBTOOL=	No
MODGNOME_HELP_FILES= Yes

BUILD_DEPENDS=	x11/gtk3mm

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
