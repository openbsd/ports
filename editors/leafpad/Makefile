# $OpenBSD: Makefile,v 1.11 2007/06/01 07:37:17 ajacoutot Exp $

COMMENT=	"simple GTK+ text editor"

DISTNAME=	leafpad-0.8.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://savannah.nongnu.org/download/leafpad/

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gnomecanvas-2 gnomeprint-2-2 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png xml2 z

MODULES=	devel/gettext
LIB_DEPENDS=	gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_X11=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
