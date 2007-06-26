# $OpenBSD: Makefile,v 1.15 2007/06/26 19:42:10 martynas Exp $

COMMENT=		"dialogs for Gnome"

DISTNAME=		zenity-2.18.2
CATEGORIES=		x11/gnome

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

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/zenity/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		dbus-glib-1.>=3::x11/dbus-glib \
			gnomecanvas-2::x11/gnome/libgnomecanvas \
			notify::devel/libnotify

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
