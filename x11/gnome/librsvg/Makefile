# $OpenBSD: Makefile,v 1.27 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"SAX-based render library for SVG files"

DISTNAME=		librsvg-2.16.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	rsvg-2         18.1           # .18.1
CATEGORIES=		devel x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/librsvg/2.16/}
EXTRACT_SUFX=           .tar.bz2

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

MODULES=		devel/gettext

LIB_DEPENDS=		gsf-1::devel/libgsf \
			croco-0.6.>=3::www/libcroco \
			gnomeprintui-2-2.>=1::x11/gnome/libgnomeprintui \
			gnomevfs-2.>=1799.1::x11/gnome/vfs2

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--with-svgz \
			--disable-mozilla-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
