# $OpenBSD: Makefile,v 1.5 2006/06/13 13:22:36 bernd Exp $

COMMENT=	"simple GTK+ text editor"

DISTNAME=	leafpad-0.8.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://savannah.nongnu.org/download/leafpad/
WANTLIB=	c freetype z fontconfig m X11 cairo \
		pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangocairo-1.0.0.0 atk-1.0.0.0 gnomeprint-2-2 \
		gnomecanvas-2 art_lgpl_2 xml2

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_X11=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
