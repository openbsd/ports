# $OpenBSD: Makefile,v 1.44 2010/11/17 11:47:31 ajacoutot Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		2.30.6

SHARED_LIBS +=	wnck-1               24.0     # .25.26

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += execinfo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render z
WANTLIB += gthread-2.0 pthread gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += startup-notification-1 GL Xxf86vm drm xcb-shm

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			devel/startup-notification

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-introspection
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
