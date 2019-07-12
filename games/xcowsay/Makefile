# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:27 sthen Exp $

COMMENT =		displays a cute cow and message on your desktop
DISTNAME =		xcowsay-1.4
CATEGORIES =		games

HOMEPAGE =		http://www.doof.me.uk/xcowsay/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES =		http://www.nickg.me.uk/files/
CONFIGURE_STYLE =	gnu

LIB_DEPENDS =		x11/gtk+2

.include <bsd.port.mk>
