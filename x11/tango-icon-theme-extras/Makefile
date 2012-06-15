# $OpenBSD: Makefile,v 1.10 2012/06/15 08:30:24 ajacoutot Exp $

COMMENT=		Tango icon theme extras for GNOME and KDE

DISTNAME=		tango-icon-theme-extras-0.1.0
REVISION=		5
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# CC Attribution-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=          x11/icon-naming-utils \
			graphics/ImageMagick
RUN_DEPENDS=		x11/tango-icon-theme \
			x11/gtk+2,-guic

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
