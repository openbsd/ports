# $OpenBSD: Makefile,v 1.6 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	collection of additional GTK widgets

DISTNAME=	libsexy-0.1.11
PKGNAME=	${DISTNAME}p3
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

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
		xml2.>=9::textproc/libxml

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z pthread-stubs xcb

.include <bsd.port.mk>
