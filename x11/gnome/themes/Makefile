# $OpenBSD: Makefile,v 1.38 2009/09/26 19:13:29 ajacoutot Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p5
CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:icon-naming-utils->=0.8.90:x11/icon-naming-utils
RUN_DEPENDS=		:gettext-*:devel/gettext

# we get the Clearlooks index.theme file from gtk2-clearlooks-engine;
# this way, both packages can be installed along
RUN_DEPENDS+=		 :gtk2-clearlooks-engine->=0.6.2p8:x11/gtk2-clearlooks-engine

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# remove file already provided by gtk2-clearlooks-engine
post-install:
	rm -f ${PREFIX}/share/themes/Clearlooks/index.theme

.include <bsd.port.mk>
