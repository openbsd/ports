# $OpenBSD: Makefile,v 1.1.1.1 2013/01/07 17:18:39 bentley Exp $

COMMENT =		graphical 8085 simulator, assembler, and debugger

V =			1.3.7
DISTNAME =		gnusim8085-${V}

CATEGORIES =		emulators devel

HOMEPAGE =		http://gnusim8085.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =		http://launchpad.net/gnusim8085/trunk/${V}/+download/

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/gtksourceview

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
