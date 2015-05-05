# $OpenBSD: Makefile,v 1.14 2015/05/05 17:00:17 sthen Exp $

COMMENT=	image viewer widget for gtk

DISTNAME=	gtkimageview-1.6.4
REVISION=	7

SHARED_LIBS=	gtkimageview	0.0

CATEGORIES=	graphics

HOMEPAGE=	http://trac.bjourne.webfactional.com/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs pthread stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	${HOMEPAGE}chrome/common/releases/

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2,-main

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
