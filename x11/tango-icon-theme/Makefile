# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 15:46:49 robert Exp $

COMMENT=		"Tango icon theme for GNOME and KDE"

DISTNAME=		tango-icon-theme-0.7.2
CATEGORIES=		x11

HOMEPAGE=		http://www.tango-project.org/
MASTER_SITES=		${HOMEPAGE}releases/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=          :icon-naming-utils-*:x11/icon-naming-utils \
			:ImageMagick-*:graphics/ImageMagick

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes

.include <bsd.port.mk>
