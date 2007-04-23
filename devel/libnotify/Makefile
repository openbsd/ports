# $OpenBSD: Makefile,v 1.1.1.1 2007/04/23 17:27:04 jasper Exp $

COMMENT=		"send desktop notifications to a notification daemon"

DISTNAME=		libnotify-0.4.4
CATEGORIES=		devel
SHARED_LIBS +=	notify             2.2      # .2.2

HOMEPAGE=		http://www.galago-project.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread z

MASTER_SITES=		${HOMEPAGE}/files/releases/source/libnotify/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		dbus-1.>=3::x11/dbus \
			dbus-glib-1.>=3::x11/dbus-glib \
			gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
