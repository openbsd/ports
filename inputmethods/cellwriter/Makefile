# $OpenBSD: Makefile,v 1.2 2015/03/27 08:43:02 ajacoutot Exp $

COMMENT =		grid-entry natural handwriting input panel

DISTNAME =		cellwriter-1.3.5
REVISION =		0

CATEGORIES =		inputmethods x11

HOMEPAGE =		http://risujin.org/cellwriter/

MAINTAINER =		Vasily Mikhaylichenko <vaskas@lxmx.com.au>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xtst atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES =		http://pub.risujin.org/cellwriter/

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=-L${X11BASE}/lib

.include <bsd.port.mk>
