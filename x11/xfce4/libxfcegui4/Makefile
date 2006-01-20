# $OpenBSD: Makefile,v 1.6 2006/01/20 23:17:56 steven Exp $

COMMENT=	"widget library for xfce4"
V=		4.2.3
DISTNAME=	libxfcegui4-${V}
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	xfcegui4 3.6
MODGNU_SHARED_LIBS=	xfcegui4 \
	'-export-dynamic -export-symbols-regex "^[^_].*" -L${X11BASE}/lib'
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::databases/dbh \
		::textproc/libxml
LIB_DEPENDS=	xfce4util.1.6::devel/libxfce4util \
		atk-1.0.800.0::devel/atk \
		gmodule-2.0.400.8,gobject-2.0.400.8,glib-2.0.400.8::devel/glib2 \
		pango-1.0.0.0,pangox-1.0.0.0,pangoxft-1.0.0.0,pangoft2-1.0.0.0::devel/pango \
		startup-notification-1.0.0::devel/startup-notification \
		gdk-x11-2.0.400.14,gdk_pixbuf-2.0.400.14,gtk-x11-2.0.400.14::x11/gtk+2
WANTLIB=	ICE SM X11 Xext Xft Xrender fontconfig freetype m

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
