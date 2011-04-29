# $OpenBSD: Makefile,v 1.1.1.1 2011/04/29 07:30:49 jasper Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		3.0.0
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=  wnck-3               0.0      # 0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm execinfo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-atom xcb-aux xcb-event
WANTLIB += xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		x11/gtk+3 \
			devel/startup-notification

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-startup-notification \
			--enable-introspection \
			--program-suffix=3
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
