# $OpenBSD: Makefile,v 1.11 2014/09/16 12:39:22 sthen Exp $

COMMENT =		displays a cute cow and message on your desktop
DISTNAME =		xcowsay-1.3
CATEGORIES =		games

HOMEPAGE =		http://www.doof.me.uk/xcowsay/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES =		http://www.nickg.me.uk/files/
CONFIGURE_STYLE =	gnu

MODULES =	devel/gettext
LIB_DEPENDS =	x11/gtk+2

.include <bsd.port.mk>
