# $OpenBSD: Makefile,v 1.12 2009/07/17 16:38:48 naddy Exp $

COMMENT=	edit enlightenment's keybindings

DISTNAME=	e16keyedit-0.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	x11

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:enlightenment->=0.16,<0.17:x11/enlightenment

USE_X11=	Yes
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
