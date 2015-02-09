# $OpenBSD: Makefile,v 1.19 2015/02/09 15:10:39 naddy Exp $

COMMENT=	japanese handwriting

DISTNAME=	uim-tomoe-gtk-0.6.0

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/uim-tomoe-gtk/}

CATEGORIES=	inputmethods japanese

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gcroots gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs tomoe tomoe-gtk
WANTLIB += uim uim-scm xcb xcb-render xcb-shm z

MODULES=	devel/gettext textproc/intltool

BUILD_DEPENDS=	textproc/gsed

LIB_DEPENDS=	inputmethods/libtomoe-gtk>=0.6.0 \
		inputmethods/uim>=1.8.6

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
