# $OpenBSD: Makefile,v 1.6 2010/10/11 08:14:42 jasper Exp $

COMMENT=	image viewer widget for gtk

DISTNAME=	gtkimageview-1.6.4
REVISION=	3

SHARED_LIBS=	gtkimageview	0.0

CATEGORIES=	graphics

HOMEPAGE=	http://trac.bjourne.webfactional.com/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb z gdk_pixbuf-2.0

MASTER_SITES=	${HOMEPAGE}chrome/common/releases/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2,-main

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
