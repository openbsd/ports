# $OpenBSD: Makefile,v 1.36 2015/08/12 22:27:32 sthen Exp $

COMMENT=	interactive geometry program

DISTNAME=	drgeo-1.1.0
REVISION=	19
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 gtk-x11-2.0 ltdl guile
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xml2 z glade-2.0
WANTLIB += ffi gthread-2.0 xcb-render xcb-shm
WANTLIB += harfbuzz graphite2 lzma

MODULES=	devel/gettext \
		textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/libglade2 \
		lang/guile

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
