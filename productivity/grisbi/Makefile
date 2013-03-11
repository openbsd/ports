# $OpenBSD: Makefile,v 1.27 2013/03/11 11:37:55 espie Exp $

COMMENT=	personal accounting application
SHARED_ONLY =	Yes

DISTNAME=	grisbi-0.8.8

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grisbi/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m osp pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z pcre crypto gdk_pixbuf-2.0
WANTLIB += xml2 gdk-x11-2.0 gtk-x11-2.0 ofx GL Xxf86vm drm gthread-2.0
WANTLIB += xcb-render xcb-shm ffi

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+2 \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--with-openssl

.include <bsd.port.mk>
