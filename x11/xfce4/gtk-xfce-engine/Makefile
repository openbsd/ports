# $OpenBSD: Makefile,v 1.8 2006/01/20 23:17:55 steven Exp $

COMMENT=	"theme engine for GTK2"
V=		4.2.3.1
DISTNAME=	gtk-xfce-engine-2.2.8
PKGNAME=	${DISTNAME}p3
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
WANTLIB=	X11 Xext Xft Xrender atk-1.0.0.0 fontconfig freetype \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0

.include <bsd.port.mk>
