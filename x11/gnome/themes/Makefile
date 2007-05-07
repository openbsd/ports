# $OpenBSD: Makefile,v 1.18 2007/05/07 08:45:22 bernd Exp $

COMMENT=		"themes collection for GNOME"

DISTNAME=		gnome-themes-2.18.1
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-themes/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:gtk-engines2->=2.9:x11/gtk-engines2 \
			:icon-naming-utils-*:x11/icon-naming-utils \
			:gettext-*:devel/gettext
RUN_DEPENDS=		:gtk-engines2->=2.9:x11/gtk-engines2

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
