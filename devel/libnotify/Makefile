# $OpenBSD: Makefile,v 1.11 2010/10/24 21:10:58 ajacoutot Exp $

COMMENT=		send desktop notifications to a notification daemon

DISTNAME=		libnotify-0.4.5
REVISION=		2
CATEGORIES=		devel
SHARED_LIBS +=	notify             2.3      # .2.3

HOMEPAGE=		http://www.galago-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xcomposite Xdamage atk-1.0 c cairo expat pcre \
		gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		fontconfig freetype glib-2.0 pangoft2-1.0 png pixman-1 \
		pthread z gio-2.0 pthread-stubs xcb gthread-2.0 xcb-render \
		xcb-render-util dbus-1 dbus-glib-1 gdk_pixbuf-2.0 \
		gdk-x11-2.0 gtk-x11-2.0

MASTER_SITES=		${HOMEPAGE}/files/releases/source/libnotify/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		::x11/dbus \
			::x11/dbus-glib \
			::x11/gtk+2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
