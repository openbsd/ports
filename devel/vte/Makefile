# $OpenBSD: Makefile,v 1.19 2007/04/24 22:02:19 martynas Exp $

COMMENT=		"terminal emulation library"

DISTNAME=		vte-0.16.2
CATEGORIES=		devel
SHARED_LIBS +=  vte                  11.6    # .11.6

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

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/vte/0.16/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
