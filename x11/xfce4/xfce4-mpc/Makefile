# $OpenBSD: Makefile,v 1.8 2009/08/11 08:38:41 ajacoutot Exp $

COMMENT=	Xfce4 mpd client panel plugin

XFCE_VERSION=	0.3.3
XFCE_PLUGIN=	mpc
PKGNAME=	${DISTNAME:S/-plugin//}p3

# BSD-ISC
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
EXTRACT_SUFX=	.tar.gz

CONFIGURE_ARGS=	--without-libmpd

WANTLIB=	X11 Xdmcp Xrender Xdamage Xau fontconfig freetype m z c \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		pixman-1 xfce4util xfcegui4 pthread-stubs xcb

.include <bsd.port.mk>
