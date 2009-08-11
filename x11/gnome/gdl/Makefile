# $OpenBSD: Makefile,v 1.9 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=	GNOME Devtool Libraries (GDL)

GNOME_PROJECT=	gdl
GNOME_VERSION=	2.24.0
PKGNAME=	${DISTNAME}p2
SHARED_LIBS +=  gdl-1                0.1      # .0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z \
		pthread-stubs xcb

LIB_DEPENDS=	glade-2.0::devel/libglade2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
