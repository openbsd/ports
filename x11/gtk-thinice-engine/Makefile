# $OpenBSD: Makefile,v 1.8 2006/01/20 13:12:02 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		"simple, clean theme engine for GTK+2"

VERSION=		2.0.2
DISTNAME=		gtk-thinice-engine-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://thinice.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender atk-1.0.0.0 fontconfig m \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=thinice/}

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.400.0,gdk_pixbuf-2.0.400.0,gtk-x11-2.0.400.0::x11/gtk+2

MODULES=		devel/gettext

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
