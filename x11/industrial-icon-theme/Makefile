# $OpenBSD: Makefile,v 1.1.1.1 2009/06/03 22:27:01 landry Exp $

COMMENT=		Industrial icon theme from OpenSUSE

DISTNAME=		industrial-icon-theme-11.0.5
CATEGORIES=		x11

MASTER_SITES=		http://forgeftp.novell.com/opensuse-art/openSUSE11/icons/

# CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::x11/icon-naming-utils \
		::x11/gnome/librsvg \
		::graphics/ImageMagick

NO_REGRESS=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
