# $OpenBSD: Makefile,v 1.28 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		libgtkhtml
GNOME_VERSION=		2.11.1
SHARED_LIBS +=	gtkhtml-2            1.1      # .0.0
PKGNAME=		${DISTNAME}p5

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png z pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		xml2::textproc/libxml \
			gailutil,gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
