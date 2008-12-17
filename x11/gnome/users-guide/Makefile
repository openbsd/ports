# $OpenBSD: Makefile,v 1.24 2008/12/17 18:47:58 jasper Exp $

# This port does not run_depends on devhelp on purpose, as it would
# create a cyclic dependency.

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		2.24.1
PKGNAME=		gnome2-user-docs-${VERSION}p0

# GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

RUN_DEPENDS=		::textproc/rarian
BUILD_DEPENDS=		::x11/gnome/doc-utils

USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
