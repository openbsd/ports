# $OpenBSD: Makefile,v 1.14 2009/02/07 15:57:50 ajacoutot Exp $

COMMENT=	GTK+ 2.x engine based on Bluecurve

VERSION=	0.6.2
DISTNAME=	clearlooks-${VERSION}
PKGNAME=	gtk2-clearlooks-engine-${VERSION}p7
CATEGORIES=	x11

HOMEPAGE=	http://clearlooks.sourceforge.net/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clearlooks/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=600.10,gdk_pixbuf-2.0.>=600.10,gtk-x11-2.0.>=600.10::x11/gtk+2

SHARED_ONLY=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu 

.include <bsd.port.mk>
