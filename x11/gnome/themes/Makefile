# $OpenBSD: Makefile,v 1.20 2007/07/05 22:50:11 jasper Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.18.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		:gtk-engines2->=2.9:x11/gtk-engines2 \
			:icon-naming-utils-*:x11/icon-naming-utils \
			:gettext-*:devel/gettext
RUN_DEPENDS=		:gtk-engines2->=2.9:x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
