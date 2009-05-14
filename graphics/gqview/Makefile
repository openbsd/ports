# $OpenBSD: Makefile,v 1.54 2009/05/14 13:39:44 ajacoutot Exp $

COMMENT=	Gtk-based graphic file viewer

DISTNAME=	gqview-2.1.5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqview/}

HOMEPAGE=	http://gqview.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png z

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::devel/xdg-utils
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		lcms::graphics/lcms

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
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
