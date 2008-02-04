# $OpenBSD: Makefile,v 1.18 2008/02/04 17:55:19 jasper Exp $

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		2.18.1
PKGNAME=		gnome2-user-docs-${VERSION}p0

# GNU FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
BUILD_DEPENDS=		${RUN_DEPENDS} \
			:gnome-doc-utils-*:x11/gnome/doc-utils

USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
