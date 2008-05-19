# $OpenBSD: Makefile,v 1.5 2008/05/19 14:40:04 landry Exp $

COMMENT=	query a dictionary service for words or phrases

V=		0.4.0
DISTNAME=	xfce4-dict-${V}

HOMEPAGE=	http://goodies.xfce.org/projects/applications/xfce4-dict

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-dict/

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xdmcp Xrender Xdamage Xau fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xcomposite Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pcre \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png pthread \
		startup-notification-1 xfce4util pixman-1 gthread-2.0

.include <bsd.port.mk>
