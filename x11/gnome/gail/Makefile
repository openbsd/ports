# $OpenBSD: Makefile,v 1.28 2008/06/02 17:58:23 jasper Exp $

COMMENT=		GNOME Accessibility Implementation Library

GNOME_PROJECT=		gail
GNOME_VERSION=		1.20.2
SHARED_LIBS +=	gailutil         20.0         # .18.1
CATEGORIES=		devel
PKGNAME=		${DISTNAME}p3

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
