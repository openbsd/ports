# $OpenBSD: Makefile,v 1.27 2009/02/11 15:33:53 jasper Exp $

# This port does not run_depends on devhelp on purpose, as it would
# create a cyclic dependency.

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		2.24.2
PKGNAME=		${DISTNAME}p0

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
