# $OpenBSD: Makefile,v 1.32 2004/05/10 00:58:45 brad Exp $

COMMENT=	"Gtk-based graphic file viewer"

DISTNAME=	gqview-1.4.3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqview/}

HOMEPAGE=	http://gqview.sourceforge.net/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext

LIB_DEPENDS+=	png.2::graphics/png \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# gqview only installs these files conditionally if it finds gnome-config.
# here we will install the files manually, this eases integration with GNOME.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnome/apps/Graphics
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/gqview.desktop \
		${PREFIX}/share/gnome/apps/Graphics
	${INSTALL_DATA} ${WRKSRC}/gqview.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
