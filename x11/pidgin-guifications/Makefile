# $OpenBSD: Makefile,v 1.1.1.1 2007/05/22 07:55:26 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"MSN style 'toaster' popups plugin for Pidgin"

DISTNAME=	pidgin-guifications-2.14
CATEGORIES=	x11

HOMEPAGE=	http://plugins.guifications.org/trac/

MAINTAINER=	Thomas Wood <grand.edgemaster@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama m \
		Xrender Xrandr glitz atk-1.0 fontconfig freetype cairo \
		gmodule-2.0 gobject-2.0 pango-1.0 gthread-2.0 glib-2.0 \
		png z pangoft2-1.0 gdk-x11-2.0 pangocairo-1.0 gtk-x11-2.0 \
		gdk_pixbuf-2.0 dbus-1 dbus-glib-1 expat ncurses xml2

MASTER_SITES=	http://downloads.guifications.org/plugins/Guifications2/

MODULES=	devel/gettext
LIB_DEPENDS=	purple::net/pidgin

CONFIGURE_STYLE=gnu

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
