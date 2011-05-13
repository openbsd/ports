# $OpenBSD: Makefile,v 1.1.1.1 2011/05/13 10:07:11 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		general GNOME User Documentation

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		3.0.3

# CC Attribution 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

# This port does not run_depends on yelp nor uses MODGNOME_HELP_FILES on
# purpose, as it would create a cyclic dependency.
BUILD_DEPENDS=		x11/gnome/doc-utils \
			textproc/rarian

USE_LIBTOOL=		No

.include <bsd.port.mk>
