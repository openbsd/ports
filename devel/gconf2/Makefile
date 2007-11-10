# $OpenBSD: Makefile,v 1.25 2007/11/10 14:08:16 jasper Exp $

COMMENT=	configuration database system for GNOME

GNOME_PROJECT=	GConf
GNOME_VERSION=	2.20.1
PKGNAME=	gconf2-${GNOME_VERSION}
SHARED_LIBS +=	gconf-2              6.0      # .5.2
CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/projects/gconf/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glitz m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png pthread z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		ORBit-2.>=2.0::devel/ORBit2 \
		xml2.>=9::textproc/libxml

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
