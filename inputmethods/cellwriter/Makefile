# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:12 sthen Exp $

COMMENT =		grid-entry natural handwriting input panel

GH_ACCOUNT =		risujin
GH_PROJECT =		cellwriter
GH_TAGNAME =		1.3.6

CATEGORIES =		inputmethods x11

MAINTAINER =		Vasily Mikhaylichenko <vaskas@lxmx.com.au>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 z

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=-L${X11BASE}/lib

.include <bsd.port.mk>
