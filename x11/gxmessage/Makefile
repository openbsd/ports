# $OpenBSD: Makefile,v 1.9 2009/09/23 16:50:01 jasper Exp $

COMMENT=	GTK+2 based xmessage(1) clone

DISTNAME=	gxmessage-2.12.3
CATEGORIES=	x11

HOMEPAGE=	http://homepages.ihug.co.nz/~trmusson/programs.html\#gxmessage

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://homepages.ihug.co.nz/~trmusson/stuff/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb

MODULES=	devel/gettext \
		textproc/intltool
LIB_DEPENDS=	gdk-x11-2.0,gtk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gxmessage
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/gxmessage

.include <bsd.port.mk>
