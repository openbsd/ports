# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 11:50:20 sthen Exp $

COMMENT=	image viewer widget for gtk

DISTNAME=	gtkimageview-1.6.4

SHARED_LIBS=	gtkimageview	0.0

CATEGORIES=	graphics

HOMEPAGE=	http://trac.bjourne.webfactional.com/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb z

MASTER_SITES=	${HOMEPAGE}chrome/common/releases/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2,-main

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
