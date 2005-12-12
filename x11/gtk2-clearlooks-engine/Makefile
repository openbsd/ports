# $OpenBSD: Makefile,v 1.3 2005/12/12 14:29:30 espie Exp $

COMMENT=	"GTK+ 2.x engine based on Bluecurve"

VERSION=	0.6.2
DISTNAME=	clearlooks-${VERSION}
PKGNAME=	gtk2-clearlooks-engine-${VERSION}p1
CATEGORIES=	x11

HOMEPAGE=	http://clearlooks.sourceforge.net/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clearlooks/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	Xext Xrender freetype m X11 fontconfig z png \
		atk-1.0.0.0 cairo glitz gmodule-2.0.0.0 gobject-2.0.0.0 \
		glib-2.0.0.0 pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.600.10,gdk_pixbuf-2.0.600.10,gtk-x11-2.0.600.10::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

SHARED_ONLY=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu 

.include <bsd.port.mk>
