# $OpenBSD: Makefile,v 1.8 2005/05/24 22:06:27 marcm Exp $

COMMENT=		"the base GNOME icon theme"

DISTNAME=		gnome-icon-theme-2.10.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-icon-theme/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:gettext->=0.10.38:devel/gettext \
			::x11/hicolor-icon-theme \
			::textproc/p5-XML-Parser
RUN_DEPENDS=		::x11/hicolor-icon-theme

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
