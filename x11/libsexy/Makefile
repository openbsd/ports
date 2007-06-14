# $OpenBSD: Makefile,v 1.1.1.1 2007/06/14 19:20:10 steven Exp $

COMMENT=	"collection of additional GTK widgets"

DISTNAME=	libsexy-0.1.11
SHARED_LIBS +=  sexy                 0.0      # .2.4
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.chipx86.com/wiki/Libsexy
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.chipx86.com/libsexy/libsexy/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
		xml2.>=9::textproc/libxml
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender expat fontconfig freetype m z iconv intl \
		atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 png

.include <bsd.port.mk>
