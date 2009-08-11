# $OpenBSD: Makefile,v 1.10 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	GTK+2 Extra Widget Set

DISTNAME=	gtk+extra-2.1.1
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=  gtkextra-x11-2.0     0.0      # .1.0
CATEGORIES=	x11 devel

HOMEPAGE=	http://gtkextra.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scigraphica/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z pthread-stubs xcb

MODULES=	devel/gettext

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
