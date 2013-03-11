# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:13 espie Exp $

COMMENT=		Industrial icon theme from OpenSUSE

DISTNAME=		industrial-icon-theme-11.0.5
REVISION=		6

CATEGORIES=		x11

MASTER_SITES=		http://forgeftp.novell.com/opensuse-art/openSUSE11/icons/

# CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	x11/gtk+2,-guic

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/gnome/librsvg \
		graphics/ImageMagick

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/tango-icon-theme

NO_TEST=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
