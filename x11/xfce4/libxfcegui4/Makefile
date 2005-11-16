# $OpenBSD: Makefile,v 1.4 2005/11/16 09:49:41 wilfried Exp $

COMMENT=	"widget library for xfce4"
V=		4.2.3
DISTNAME=	libxfcegui4-${V}
PKGNAME=	${DISTNAME}p0
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
		pango-1.0.0.0,pangocairo-1.0.0.0,pangoft2-1.0.0.0::devel/pango \
		startup-notification-1.0.0::devel/startup-notification \
		gdk-x11-2.0.400.14,gdk_pixbuf-2.0.400.14,gtk-x11-2.0.400.14::x11/gtk+2
WANTLIB=	ICE SM X11 Xext Xrender fontconfig \
		freetype m z cairo glitz png

CONFIGURE_ARGS+=--disable-gtk-doc

# XXX workaround libtool's versioning of simple shared object modules
post-install:
	${INSTALL_DATA} \
		${WRKSRC}/xfce4-modules/combo/.libs/libxfce4_combo.so.0.0 \
		${PREFIX}/lib/xfce4/modules/libxfce4_combo.so
	${INSTALL_DATA} \
		${WRKSRC}/xfce4-modules/mime-applications/.libs/libxfce4_mime.so.0.0 \
		${PREFIX}/lib/xfce4/modules/libxfce4_mime.so
	${INSTALL_DATA} \
		${WRKSRC}/xfce4-modules/mime-icons/.libs/libxfce4_mime_icons.so.0.0 \
		${PREFIX}/lib/xfce4/modules/libxfce4_mime_icons.so

.include <bsd.port.mk>
