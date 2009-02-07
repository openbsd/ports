# $OpenBSD: Makefile,v 1.33 2009/02/07 15:59:03 ajacoutot Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:icon-naming-utils->=0.8.7:x11/icon-naming-utils
RUN_DEPENDS=		:gettext-*:devel/gettext \
			:gtk-engines2->=2.9:x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# remove file already provided by gtk2-clearlooks-engine
post-install:
	rm -f ${PREFIX}/share/themes/Clearlooks/index.theme

.include <bsd.port.mk>
