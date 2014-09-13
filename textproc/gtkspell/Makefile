# $OpenBSD: Makefile,v 1.44 2014/09/13 16:36:54 ajacoutot Exp $

PORTROACH+=	limit:^2

COMMENT=	gtk+2 spelling checker
DISTNAME=	gtkspell-2.0.16

SHARED_LIBS=	gtkspell 1.0 # .0.0

REVISION=	6

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += enchant expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkspell/}

USE_GMAKE=	Yes

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	textproc/enchant \
		x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
