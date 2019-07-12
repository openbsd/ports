# $OpenBSD: Makefile,v 1.28 2019/07/12 20:47:13 sthen Exp $

COMMENT=	japanese handwriting input widget

DISTNAME=	tomoe-gtk-0.6.0
PKGNAME=	lib${DISTNAME}
REVISION=	3

HOMEPAGE= 	https://osdn.jp/projects/tomoe/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/tomoe-gtk/}

CATEGORIES=	inputmethods japanese

SHARED_LIBS=	tomoe-gtk	1.0
# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread tomoe xcb xcb-render xcb-shm z

USE_GMAKE=	Yes

LIB_DEPENDS=	x11/gtk+2 \
		inputmethods/tomoe>=0.6.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--without-gucharmap \
		--without-python

.include <bsd.port.mk>
