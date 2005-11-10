# $OpenBSD: Makefile,v 1.4 2005/11/10 22:57:37 jolan Exp $

COMMENT=	"theme engine for GTK2"
V=		4.2.3.1
DISTNAME=	gtk-xfce-engine-2.2.8
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.600.0,gdk_pixbuf-2.0.600.0,gtk-x11-2.0.600.0::x11/gtk+2
RUN_DEPENDS=	:xfwm4-*:x11/xfce4/xfwm4
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender fontconfig freetype m \
		atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

.include <bsd.port.mk>
