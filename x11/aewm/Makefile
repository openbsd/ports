# $OpenBSD: Makefile,v 1.24 2009/08/11 08:42:07 ajacoutot Exp $

DISTNAME=	aewm-1.3.0
PKGNAME=	${DISTNAME}p8
CATEGORIES=	x11

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xaw Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb

COMMENT=	minimalistic window manager for X11
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE}

USE_GMAKE=	Yes
USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
NO_REGRESS=	Yes

.include <bsd.port.mk>
