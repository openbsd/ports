# $OpenBSD: Makefile,v 1.10 2007/12/03 18:59:04 fgsch Exp $

COMMENT=	edit enlightenment's keybindings

DISTNAME=	e16keyedit-0.5
CATEGORIES=    	x11

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:enlightenment-0.16*:x11/enlightenment

USE_X11=	Yes
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
