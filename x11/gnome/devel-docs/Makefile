# $OpenBSD: Makefile,v 1.7 2009/02/11 15:33:51 jasper Exp $

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

RUN_DEPENDS=		::textproc/rarian
BUILD_DEPENDS=		${RUN_DEPENDS} \
			:gnome-doc-utils-*:x11/gnome/doc-utils

MODGNOME_HELP_FILES=	Yes

PKG_ARCH=		*
USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
