# $OpenBSD: Makefile,v 1.7 2005/11/15 21:21:26 wilfried Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"simple, clean theme engine for GTK+2"

VERSION=		2.0.2
DISTNAME=		gtk-thinice-engine-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

HOMEPAGE=		http://thinice.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 atk-1.0.0.0 cairo fontconfig \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 iconv \
		intl m pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=thinice/}

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.400.0,gdk_pixbuf-2.0.400.0,gtk-x11-2.0.400.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
