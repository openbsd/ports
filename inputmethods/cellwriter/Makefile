# $OpenBSD: Makefile,v 1.5 2018/06/29 22:16:17 espie Exp $

COMMENT =		grid-entry natural handwriting input panel

DISTNAME =		cellwriter-1.3.5
REVISION =		3

CATEGORIES =		inputmethods x11

HOMEPAGE =		http://risujin.org/cellwriter/

MAINTAINER =		Vasily Mikhaylichenko <vaskas@lxmx.com.au>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =		http://pub.risujin.org/cellwriter/

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=-L${X11BASE}/lib

.include <bsd.port.mk>
