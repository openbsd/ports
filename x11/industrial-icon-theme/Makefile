# $OpenBSD: Makefile,v 1.11 2011/12/03 19:13:18 ajacoutot Exp $

COMMENT=		Industrial icon theme from OpenSUSE

DISTNAME=		industrial-icon-theme-11.0.5
REVISION=		5

CATEGORIES=		x11

MASTER_SITES=		http://forgeftp.novell.com/opensuse-art/openSUSE11/icons/

# CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	x11/gtk+2,-guic

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/gnome/librsvg \
		graphics/ImageMagick

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/tango-icon-theme

NO_REGRESS=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
