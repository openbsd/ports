# $OpenBSD: Makefile,v 1.9 2007/01/18 21:52:52 jasper Exp $

COMMENT=		"the base GNOME icon theme"

DISTNAME=		gnome-icon-theme-2.16.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-icon-theme/2.16/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/gettext \
			::textproc/p5-XML-Parser \
			::textproc/intltool \
			::x11/hicolor-icon-theme \
			:icon-naming-utils->=0.8.1:x11/icon-naming-utils
RUN_DEPENDS=		::x11/hicolor-icon-theme

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
