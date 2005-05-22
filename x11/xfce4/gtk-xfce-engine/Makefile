# $OpenBSD: Makefile,v 1.2 2005/05/22 01:30:44 jolan Exp $

COMMENT=	"theme engine for GTK2"
V=		4.2.2
DISTNAME=	gtk-xfce-engine-2.2.7
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=	:xfwm4-*:x11/xfce4/xfwm4
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender fontconfig freetype m \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0


# XXX workaround libtool's versioning of simple shared object modules
post-install:
	${INSTALL_DATA} ${WRKSRC}/src/.libs/libxfce.so.0.0 \
		${PREFIX}/lib/gtk-2.0/2.4.0/engines/libxfce.so

.include <bsd.port.mk>
