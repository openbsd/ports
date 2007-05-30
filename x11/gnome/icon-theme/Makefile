# $OpenBSD: Makefile,v 1.11 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"base icon theme for GNOME"

DISTNAME=		gnome-icon-theme-2.18.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11 x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-icon-theme/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:gettext-*:devel/gettext \
			::textproc/p5-XML-Parser \
			:icon-naming-utils->=0.8.1:x11/icon-naming-utils

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
