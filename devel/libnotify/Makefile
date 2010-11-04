# $OpenBSD: Makefile,v 1.12 2010/11/04 09:49:52 ajacoutot Exp $

COMMENT=		send desktop notifications to a notification daemon

GNOME_VERSION=		0.5.2
GNOME_PROJECT=		libnotify

CATEGORIES=		devel

SHARED_LIBS +=	notify             3.0      # .4.0

HOMEPAGE=		http://www.galago-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm c drm expat fontconfig
WANTLIB += freetype m pixman-1 pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z atk-1.0 cairo dbus-1 dbus-glib-1 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 
WANTLIB += gthread-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre png

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		::x11/dbus-glib \
			::x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc

.include <bsd.port.mk>
