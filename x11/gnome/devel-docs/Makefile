# $OpenBSD: Makefile,v 1.16 2010/09/30 07:42:59 jasper Exp $

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		2.32.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

MODGNOME_HELP_FILES=	Yes

PKG_ARCH=		*
USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
