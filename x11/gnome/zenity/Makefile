# $OpenBSD: Makefile,v 1.16 2007/07/05 22:50:11 jasper Exp $

COMMENT=		dialogs for Gnome

GNOME_PROJECT=		zenity
GNOME_VERSION=		2.18.2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 c cairo dbus-1 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		dbus-glib-1.>=3::x11/dbus-glib \
			gnomecanvas-2::x11/gnome/libgnomecanvas \
			notify::devel/libnotify

USE_X11=		Yes
USE_LIBTOOL=		No

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
