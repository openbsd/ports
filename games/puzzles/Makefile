# $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:40 espie Exp $

COMMENT =	collection of puzzles games

DISTNAME =	puzzles-r9534
PKGNAME =	${DISTNAME:S/-r/-/}
REVISION =	0
CATEGORIES =	games

HOMEPAGE =	http://www.chiark.greenend.org.uk/~sgtatham/puzzles/
# distfile cksum changes daily
MASTER_SITES =	http://spacehopper.org/mirrors/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE =	yes
MODULES =	devel/gettext
LIB_DEPENDS =	x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils devel/xdg-utils \
		x11/gtk+2,-guic
MAKE_FLAGS =	CC="${CC}"

WANTLIB += atk-1.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender c cairo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gtk-x11-2.0 m pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

.include <bsd.port.mk>
