# $OpenBSD: Makefile,v 1.23 2008/02/04 17:55:19 jasper Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.20.2
CATEGORIES=		x11
PKGNAME=		${DISTNAME}p0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:icon-naming-utils-*:x11/icon-naming-utils
RUN_DEPENDS=		:gettext-*:devel/gettext \
			:gtk-engines2->=2.9:x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
