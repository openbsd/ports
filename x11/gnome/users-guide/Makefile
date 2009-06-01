# $OpenBSD: Makefile,v 1.31 2009/06/01 23:32:58 ajacoutot Exp $

# This port does not run_depends on yelp on purpose, as it would
# create a cyclic dependency.

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		2.24.2
PKGNAME=		${DISTNAME}p3

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
