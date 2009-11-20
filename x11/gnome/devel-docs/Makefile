# $OpenBSD: Makefile,v 1.13 2009/11/20 08:31:20 ajacoutot Exp $

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		2.28.1

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
