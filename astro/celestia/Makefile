# $OpenBSD: Makefile,v 1.19 2010/10/11 08:11:24 jasper Exp $

COMMENT=	free space simulator and planetarium

DISTNAME=	celestia-1.6.0

CATEGORIES=	astro x11

HOMEPAGE=	http://www.shatters.net/celestia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=celestia/}

REVISION =	5
WANTLIB += GL GLU ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt atk-1.0
WANTLIB += c cairo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += jpeg m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb z
WANTLIB += gdkglext-x11-1.0 gtkglext-x11-1.0 lua theora

MODULES=	devel/gettext
LIB_DEPENDS=	::x11/gtkglext \
		::lang/lua \
		::multimedia/libtheora
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gtk \
		--with-lua \
		--enable-cairo \
		--enable-theora

# /usr/local/lib/libgthread-2.0.so.X.X: undefined symbol 'pthread_mutex_trylock'
CFLAGS+=	-pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/celestia/celestiacore.cpp

post-install:
	${INSTALL_DATA} ${WRKSRC}/models/*.3ds \
		${PREFIX}/share/celestia/models

.include <bsd.port.mk>
