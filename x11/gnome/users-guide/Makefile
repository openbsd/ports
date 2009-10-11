# $OpenBSD: Makefile,v 1.32 2009/10/11 15:51:51 ajacoutot Exp $

# This port does not run_depends on yelp on purpose, as it would
# create a cyclic dependency.

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		2.28.0

# GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils \
			::textproc/rarian

USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
