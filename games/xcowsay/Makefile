# $OpenBSD: Makefile,v 1.2 2009/11/03 19:55:57 landry Exp $

COMMENT =		displays a cute cow and message on your desktop
DISTNAME =		xcowsay-1.1
PKGNAME =		${DISTNAME}p0
CATEGORIES =		games

HOMEPAGE =		http://www.doof.me.uk/xcowsay/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.nickg.me.uk/files/
CONFIGURE_STYLE =	gnu

MODULES =	devel/gettext
LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z

.include <bsd.port.mk>
