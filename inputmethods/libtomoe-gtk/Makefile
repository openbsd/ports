# $OpenBSD: Makefile,v 1.24 2016/05/29 21:41:45 bentley Exp $

COMMENT=	japanese handwriting input widget

DISTNAME=	tomoe-gtk-0.6.0
PKGNAME=	lib${DISTNAME}
REVISION=	0

HOMEPAGE= 	https://osdn.jp/projects/tomoe/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/tomoe-gtk/}

CATEGORIES=	inputmethods japanese

SHARED_LIBS=	tomoe-gtk	1.0
MODULES=	devel/gettext

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs tomoe xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext

USE_GMAKE=	Yes

LIB_DEPENDS=	x11/gtk+2 \
		inputmethods/tomoe>=0.6.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--without-gucharmap \
		--without-python

.include <bsd.port.mk>
