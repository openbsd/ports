# $OpenBSD: Makefile,v 1.35 2009/10/10 13:40:20 jasper Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		2.28.0
SHARED_LIBS +=	wnck-1               24.0     # .25.23
CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += execinfo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-atom
WANTLIB += xcb-aux xcb-event z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
