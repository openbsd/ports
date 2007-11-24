# $OpenBSD: Makefile,v 1.1.1.1 2007/11/24 16:56:29 steven Exp $

COMMENT=	showcase for GTK+ 2 widgets

DISTNAME=	thewidgetfactory-0.2.1
CATEGORIES=	x11

HOMEPAGE=	http://www.stellingwerff.com/?page_id=10

MAINTAINER=	Andres Delfino <adelfino@gmail.com>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.stellingwerff.com/TheWidgetFactory/

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage Xrender c m z expat fontconfig freetype \
		atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 png pcre

CONFIGURE_STYLE=gnu

USE_X11=	Yes
USE_LIBTOOL=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
