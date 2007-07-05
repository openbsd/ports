# $OpenBSD: Makefile,v 1.28 2007/07/05 22:50:11 jasper Exp $

COMMENT=		SAX-based render library for SVG files

GNOME_PROJECT=		librsvg
GNOME_VERSION=		2.16.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	rsvg-2         18.1           # .18.1
CATEGORIES=		devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2 X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender art_lgpl_2 atk-1.0 bz2 c cairo crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype gconf-2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnomecanvas-2 gnomeprint-2-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gsf-1::devel/libgsf \
			croco-0.6.>=3::www/libcroco \
			gnomeprintui-2-2.>=1::x11/gnome/libgnomeprintui \
			gnomevfs-2.>=1799.1::x11/gnome/vfs2

USE_X11=		Yes
CONFIGURE_ARGS+= 	--with-svgz \
			--disable-mozilla-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
