# $OpenBSD: Makefile,v 1.25 2007/09/07 12:47:35 jasper Exp $

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.16.8
CATEGORIES=		devel
SHARED_LIBS +=  vte                  11.10    # .11.12

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 m ncurses pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pangox-1.0 pangoxft-1.0 \
		png util z

MODULES=		devel/gettext \
			x11/gnome
LIB_DEPENDS=		gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
