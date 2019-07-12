# $OpenBSD: Makefile,v 1.25 2019/07/12 20:47:14 sthen Exp $

COMMENT=	japanese handwriting

DISTNAME=	uim-tomoe-gtk-0.6.0
REVISION=	3

HOMEPAGE= 	https://osdn.jp/projects/tomoe/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/uim-tomoe-gtk/}

CATEGORIES=	inputmethods japanese

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype fribidi
WANTLIB += gcroots gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread tomoe tomoe-gtk uim uim-scm xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	textproc/intltool

BUILD_DEPENDS=	textproc/gsed

LIB_DEPENDS=	inputmethods/libtomoe-gtk>=0.6.0 \
		inputmethods/uim>=1.8.6

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
