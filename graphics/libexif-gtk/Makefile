# $OpenBSD: Makefile,v 1.7 2009/06/16 11:45:28 sthen Exp $

COMMENT=	GTK2 interface to libexif

DISTNAME=	libexif-gtk-0.3.5
PKGNAME=       ${DISTNAME}p5
SHARED_LIBS +=	exif-gtk 0.0	# .5.0
CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype pcre \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 z png Xcomposite \
		Xdamage

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
		exif.>=12::graphics/libexif

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
