# $OpenBSD: Makefile,v 1.22 2008/02/01 21:38:26 steven Exp $

DISTNAME=	aewm-1.3.0
PKGNAME=	${DISTNAME}p6
CATEGORIES=	x11

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xaw Xext Xt Xrender Xcursor Xdamage Xdmcp \
		Xfixes Xi Xinerama Xrandr expat c z glitz png \
		atk-1.0 fontconfig freetype m glib-2.0 \
		gmodule-2.0 gobject-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 cairo

COMMENT=	minimalistic window manager for X11
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE}

USE_GMAKE=	Yes
USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
NO_REGRESS=	Yes

.include <bsd.port.mk>
